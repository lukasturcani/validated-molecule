module ValidatedMolecule.Position
    ( Position
    , position
    , toArray
    , x
    , y
    , z
    ) where

data Position = Position Number Number Number

position :: Number -> Number -> Number -> Position
position = Position

toArray :: Position -> Array Number
toArray (Position _x _y _z) = [_x, _y, _z]

x :: Position -> Number
x (Position _x _ _) = _x

y :: Position -> Number
y (Position _ _y _) = _y

z :: Position -> Number
z (Position _ _ _z) = _z
