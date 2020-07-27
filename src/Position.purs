module ValidatedMolecule.Internal.Position
    ( Position
    , position
    , toArray
    ) where

data Position = Position Number Number Number

position :: Number -> Number -> Number -> Position
position = Position

toArray :: Position -> Array Number
toArray (Position x y z) = [x, y, z]
