-- | Allows the creation of validated molecular structures.

module ValidatedMolecule
    ( module Exports
    , atom
    , bond
    , molecule
    , atoms
    , bonds
    , atom1
    , atom2
    , order
    , id
    , chemicalSymbol
    , position
    ) where

import Data.Maybe (Maybe)
import ValidatedMolecule.Position (Position)
import ValidatedMolecule.Internal.Atom (Atom) as Exports
import ValidatedMolecule.Internal.Bond (Bond) as Exports

import ValidatedMolecule.ChemicalSymbol as ChemicalSymbol

import ValidatedMolecule.Internal.Molecule
    ( Molecule
    , MoleculeAtom
    , MoleculeBond
    , AtomId
    ) as Exports

import ValidatedMolecule.Internal.Atom
    ( atom
    ) as Atom

import ValidatedMolecule.Internal.Bond
    ( bond
    , Atom1Id
    , Atom2Id
    ) as Bond

import ValidatedMolecule.Internal.BondOrder
    ( BondOrder
    ) as BondOrder

import ValidatedMolecule.Internal.Molecule
    ( molecule
    , atoms
    , bonds
    , atom1
    , atom2
    , order
    , id
    , chemicalSymbol
    , position
    ) as Molecule

-- | Create an `Atom`.
atom :: ChemicalSymbol.ChemicalSymbol -> Position -> Exports.Atom
atom = Atom.atom

-- | Create a `Bond`
bond
    :: BondOrder.BondOrder
    -> Bond.Atom1Id
    -> Bond.Atom2Id
    -> Exports.Bond

bond = Bond.bond

-- | Create a validated molecule.
molecule
    :: Array Exports.Atom
    -> Array Exports.Bond
    -> Maybe Exports.Molecule

molecule = Molecule.molecule

-- | Get the atoms of a molecule.
atoms :: Exports.Molecule -> Array Exports.MoleculeAtom
atoms = Molecule.atoms

-- | Get the bonds of a molecule.
bonds :: Exports.Molecule -> Array Exports.MoleculeBond
bonds = Molecule.bonds

-- | Get the first atom of a bond.
atom1 :: Exports.MoleculeBond -> Exports.MoleculeAtom
atom1 = Molecule.atom1

-- | Get the second atom of a bond.
atom2 :: Exports.MoleculeBond -> Exports.MoleculeAtom
atom2 = Molecule.atom2

-- | Get the bond order of a bond.
order :: Exports.MoleculeBond -> BondOrder.BondOrder
order = Molecule.order

-- | Get the id of an atom.
id :: Exports.MoleculeAtom -> Exports.AtomId
id = Molecule.id

-- | Get the chemical symbol of an atom.
chemicalSymbol :: Exports.MoleculeAtom -> ChemicalSymbol.ChemicalSymbol
chemicalSymbol = Molecule.chemicalSymbol

-- | Get the position of an atom.
position :: Exports.MoleculeAtom -> Position
position = Molecule.position
