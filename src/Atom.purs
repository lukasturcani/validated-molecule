module ValidatedMolecule.Internal.Atom
    ( Atom
    , atom
    , chemicalSymbol
    , position
    ) where

import ValidatedMolecule.Position (Position)
import ValidatedMolecule.Internal.ChemicalSymbol (ChemicalSymbol)

data Atom = Atom
    { _chemicalSymbol :: ChemicalSymbol
    , _position       :: Position
    }

atom :: ChemicalSymbol -> Position -> Atom
atom symbol pos = Atom { _chemicalSymbol: symbol, _position: pos }

chemicalSymbol :: Atom -> ChemicalSymbol
chemicalSymbol (Atom {_chemicalSymbol}) = _chemicalSymbol

position :: Atom -> Position
position (Atom {_position}) = _position
