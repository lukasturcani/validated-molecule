module ValidatedMolecule
    ( module Exports
    , atom
    , getPosition
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
import ValidatedMolecule.Internal.Atom (Atom) as Exports
import ValidatedMolecule.Internal.Bond (Bond) as Exports
import ValidatedMolecule.Internal.Position (Position) as Exports

import ValidatedMolecule.Internal.ChemicalSymbol
    ( ChemicalSymbol (..)
    ) as Exports

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

import ValidatedMolecule.Internal.Position
    ( position
    ) as Position

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

atom :: Exports.ChemicalSymbol -> Exports.Position -> Exports.Atom
atom = Atom.atom

bond
    :: BondOrder.BondOrder
    -> Bond.Atom1Id
    -> Bond.Atom2Id
    -> Exports.Bond

bond = Bond.bond

molecule
    :: Array Exports.Atom
    -> Array Exports.Bond
    -> Maybe Exports.Molecule

molecule = Molecule.molecule

atoms :: Exports.Molecule -> Array Exports.MoleculeAtom
atoms = Molecule.atoms

bonds :: Exports.Molecule -> Array Exports.MoleculeBond
bonds = Molecule.bonds

atom1 :: Exports.MoleculeBond -> Exports.MoleculeAtom
atom1 = Molecule.atom1

atom2 :: Exports.MoleculeBond -> Exports.MoleculeAtom
atom2 = Molecule.atom2

order :: Exports.MoleculeBond -> BondOrder.BondOrder
order = Molecule.order

id :: Exports.MoleculeAtom -> Exports.AtomId
id = Molecule.id

chemicalSymbol :: Exports.MoleculeAtom -> Exports.ChemicalSymbol
chemicalSymbol = Molecule.chemicalSymbol

position :: Exports.MoleculeAtom -> Exports.Position
position = Molecule.position

getPosition :: Number -> Number -> Number -> Exports.Position
getPosition = Position.position
