module ValidatedMolecule.Internal.Molecule
    ( Molecule
    , MoleculeAtom
    , MoleculeBond
    , AtomId
    , atoms
    , bonds
    , molecule
    , atom1
    , atom2
    , order
    , id
    , chemicalSymbol
    , position
    ) where

import Prelude
import Data.Maybe (Maybe)
import Data.List (List (Nil), (:))
import Data.Array ((!!), (..), fromFoldable, length, zipWith)
import Data.Foldable (foldM)
import ValidatedMolecule.Internal.Atom as Atom
import ValidatedMolecule.Internal.Bond as Bond
import ValidatedMolecule.Internal.ChemicalSymbol (ChemicalSymbol)
import ValidatedMolecule.Internal.Position (Position)
import ValidatedMolecule.Internal.BondOrder (BondOrder)

data Molecule = Molecule
    { _atoms :: Array MoleculeAtom
    , _bonds :: Array MoleculeBond
    }

molecule :: Array Atom.Atom -> Array Bond.Bond -> Maybe Molecule
molecule atoms' bonds' = do
    let maxAtomId = length atoms' - 1
    let moleculeAtoms = zipWith _atom (0 .. maxAtomId) atoms'
    moleculeBonds <- _bonds moleculeAtoms bonds'
    pure
        (Molecule
            { _atoms: moleculeAtoms
            , _bonds: fromFoldable moleculeBonds
            }
        )

_atom :: AtomId -> Atom.Atom -> MoleculeAtom
_atom id' atom = MoleculeAtom
    { _id: id'
    , _chemicalSymbol: Atom.chemicalSymbol atom
    , _position: Atom.position atom
    }

_bonds
    :: Array MoleculeAtom
    -> Array Bond.Bond
    -> Maybe (List MoleculeBond)
_bonds atoms' bonds' = foldM (_addBond atoms') Nil bonds'

_addBond
    :: Array MoleculeAtom
    -> List MoleculeBond
    -> Bond.Bond
    -> Maybe (List MoleculeBond)
_addBond atoms' bonds' bond = do
    moleculeBond <- _bond atoms' bond
    pure (moleculeBond : bonds')

_bond :: Array MoleculeAtom -> Bond.Bond -> Maybe MoleculeBond
_bond atoms' bond = do
    atom1' <- atoms' !! (Bond.atom1Id bond)
    atom2' <- atoms' !! (Bond.atom2Id bond)
    pure
        (MoleculeBond
            { _order: (Bond.order bond)
            , _atom1: atom1'
            , _atom2: atom2'
            }
        )

atoms :: Molecule -> Array MoleculeAtom
atoms (Molecule { _atoms }) = _atoms

bonds :: Molecule -> Array MoleculeBond
bonds (Molecule { _bonds: moleculeBonds }) = moleculeBonds

type AtomId = Int

data MoleculeAtom = MoleculeAtom
    { _id             :: AtomId
    , _chemicalSymbol :: ChemicalSymbol
    , _position       :: Position
    }

id :: MoleculeAtom -> AtomId
id (MoleculeAtom { _id }) = _id

chemicalSymbol :: MoleculeAtom -> ChemicalSymbol
chemicalSymbol (MoleculeAtom { _chemicalSymbol }) = _chemicalSymbol

position :: MoleculeAtom -> Position
position (MoleculeAtom { _position }) = _position

data MoleculeBond = MoleculeBond
    { _atom1 :: MoleculeAtom
    , _atom2 :: MoleculeAtom
    , _order :: BondOrder
    }

atom1 :: MoleculeBond -> MoleculeAtom
atom1 (MoleculeBond { _atom1 }) = _atom1

atom2 :: MoleculeBond -> MoleculeAtom
atom2 (MoleculeBond { _atom2 }) = _atom2

order :: MoleculeBond -> BondOrder
order (MoleculeBond { _order }) = _order
