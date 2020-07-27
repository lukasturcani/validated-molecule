module ValidatedMolecule.Internal.Bond
    ( Bond
    , Atom1Id
    , Atom2Id
    , bond
    , atom1Id
    , atom2Id
    , order
    ) where

import ValidatedMolecule.Internal.BondOrder (BondOrder)

type Atom1Id   = Int
type Atom2Id   = Int

data Bond = Bond
    { _order   :: BondOrder
    , _atom1Id :: Atom1Id
    , _atom2Id :: Atom1Id
    }

bond :: BondOrder -> Atom1Id -> Atom2Id -> Bond
bond order' id1 id2 = Bond
    { _order:   order'
    , _atom1Id: id1
    , _atom2Id: id2
    }

order :: Bond -> BondOrder
order (Bond { _order }) = _order

atom1Id :: Bond -> Atom1Id
atom1Id (Bond { _atom1Id }) = _atom1Id

atom2Id :: Bond -> Atom2Id
atom2Id (Bond { _atom2Id }) = _atom2Id
