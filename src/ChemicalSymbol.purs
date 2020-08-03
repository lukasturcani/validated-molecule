module ValidatedMolecule.ChemicalSymbol
    ( ChemicalSymbol (..)
    , chemicalSymbol
    , atomicNumber
    ) where

import Data.Maybe (Maybe (..))

data ChemicalSymbol
    = H
    | He
    | Li
    | Be
    | B
    | C
    | N
    | O
    | F
    | Ne
    | Na
    | Mg
    | Al
    | Si
    | P
    | S
    | Cl
    | Ar
    | K
    | Ca
    | Sc
    | Ti
    | V
    | Cr
    | Mn
    | Fe
    | Co
    | Ni
    | Cu
    | Zn
    | Ga
    | Ge
    | As
    | Se
    | Br
    | Kr
    | Rb
    | Sr
    | Y
    | Zr
    | Nb
    | Mo
    | Tc
    | Ru
    | Rh
    | Pd
    | Ag
    | Cd
    | In
    | Sn
    | Sb
    | Te
    | I
    | Xe
    | Cs
    | Ba
    | Hf
    | Ta
    | W
    | Re
    | Os
    | Ir
    | Pt
    | Au
    | Hg
    | Tl
    | Pb
    | Bi
    | Po
    | At
    | Rn
    | Fr
    | Ra
    | Rf
    | Db
    | Sg
    | Bh
    | Hs
    | Mt
    | La
    | Ce
    | Pr
    | Nd
    | Pm
    | Sm
    | Eu
    | Gd
    | Tb
    | Dy
    | Ho
    | Er
    | Tm
    | Yb
    | Lu
    | Ac
    | Th
    | Pa
    | U
    | Np
    | Pu
    | Am
    | Cm
    | Bk
    | Cf
    | Es
    | Fm
    | Md
    | No
    | Lr

chemicalSymbol :: Int -> Maybe ChemicalSymbol
chemicalSymbol   1 = Just H
chemicalSymbol   2 = Just He
chemicalSymbol   3 = Just Li
chemicalSymbol   4 = Just Be
chemicalSymbol   5 = Just B
chemicalSymbol   6 = Just C
chemicalSymbol   7 = Just N
chemicalSymbol   8 = Just O
chemicalSymbol   9 = Just F
chemicalSymbol  10 = Just Ne
chemicalSymbol  11 = Just Na
chemicalSymbol  12 = Just Mg
chemicalSymbol  13 = Just Al
chemicalSymbol  14 = Just Si
chemicalSymbol  15 = Just P
chemicalSymbol  16 = Just S
chemicalSymbol  17 = Just Cl
chemicalSymbol  18 = Just Ar
chemicalSymbol  19 = Just K
chemicalSymbol  20 = Just Ca
chemicalSymbol  21 = Just Sc
chemicalSymbol  22 = Just Ti
chemicalSymbol  23 = Just V
chemicalSymbol  24 = Just Cr
chemicalSymbol  25 = Just Mn
chemicalSymbol  26 = Just Fe
chemicalSymbol  27 = Just Co
chemicalSymbol  28 = Just Ni
chemicalSymbol  29 = Just Cu
chemicalSymbol  30 = Just Zn
chemicalSymbol  31 = Just Ga
chemicalSymbol  32 = Just Ge
chemicalSymbol  33 = Just As
chemicalSymbol  34 = Just Se
chemicalSymbol  35 = Just Br
chemicalSymbol  36 = Just Kr
chemicalSymbol  37 = Just Rb
chemicalSymbol  38 = Just Sr
chemicalSymbol  39 = Just Y
chemicalSymbol  40 = Just Zr
chemicalSymbol  41 = Just Nb
chemicalSymbol  42 = Just Mo
chemicalSymbol  43 = Just Tc
chemicalSymbol  44 = Just Ru
chemicalSymbol  45 = Just Rh
chemicalSymbol  46 = Just Pd
chemicalSymbol  47 = Just Ag
chemicalSymbol  48 = Just Cd
chemicalSymbol  49 = Just In
chemicalSymbol  50 = Just Sn
chemicalSymbol  51 = Just Sb
chemicalSymbol  52 = Just Te
chemicalSymbol  53 = Just I
chemicalSymbol  54 = Just Xe
chemicalSymbol  55 = Just Cs
chemicalSymbol  56 = Just Ba
chemicalSymbol  57 = Just La
chemicalSymbol  58 = Just Ce
chemicalSymbol  59 = Just Pr
chemicalSymbol  60 = Just Nd
chemicalSymbol  61 = Just Pm
chemicalSymbol  62 = Just Sm
chemicalSymbol  63 = Just Eu
chemicalSymbol  64 = Just Gd
chemicalSymbol  65 = Just Tb
chemicalSymbol  66 = Just Dy
chemicalSymbol  67 = Just Ho
chemicalSymbol  68 = Just Er
chemicalSymbol  69 = Just Tm
chemicalSymbol  70 = Just Yb
chemicalSymbol  71 = Just Lu
chemicalSymbol  72 = Just Hf
chemicalSymbol  73 = Just Ta
chemicalSymbol  74 = Just W
chemicalSymbol  75 = Just Re
chemicalSymbol  76 = Just Os
chemicalSymbol  77 = Just Ir
chemicalSymbol  78 = Just Pt
chemicalSymbol  79 = Just Au
chemicalSymbol  80 = Just Hg
chemicalSymbol  81 = Just Tl
chemicalSymbol  82 = Just Pb
chemicalSymbol  83 = Just Bi
chemicalSymbol  84 = Just Po
chemicalSymbol  85 = Just At
chemicalSymbol  86 = Just Rn
chemicalSymbol  87 = Just Fr
chemicalSymbol  88 = Just Ra
chemicalSymbol  89 = Just Ac
chemicalSymbol  90 = Just Th
chemicalSymbol  91 = Just Pa
chemicalSymbol  92 = Just U
chemicalSymbol  93 = Just Np
chemicalSymbol  94 = Just Pu
chemicalSymbol  95 = Just Am
chemicalSymbol  96 = Just Cm
chemicalSymbol  97 = Just Bk
chemicalSymbol  98 = Just Cf
chemicalSymbol  99 = Just Es
chemicalSymbol 100 = Just Fm
chemicalSymbol 101 = Just Md
chemicalSymbol 102 = Just No
chemicalSymbol 103 = Just Lr
chemicalSymbol 104 = Just Rf
chemicalSymbol 105 = Just Db
chemicalSymbol 106 = Just Sg
chemicalSymbol 107 = Just Bh
chemicalSymbol 108 = Just Hs
chemicalSymbol 109 = Just Mt
chemicalSymbol   _ = Nothing

atomicNumber :: ChemicalSymbol -> Int
atomicNumber  H  = 1
atomicNumber  He = 2
atomicNumber  Li = 3
atomicNumber  Be = 4
atomicNumber  B  = 5
atomicNumber  C  = 6
atomicNumber  N  = 7
atomicNumber  O  = 8
atomicNumber  F  = 9
atomicNumber  Ne = 10
atomicNumber  Na = 11
atomicNumber  Mg = 12
atomicNumber  Al = 13
atomicNumber  Si = 14
atomicNumber  P  = 15
atomicNumber  S  = 16
atomicNumber  Cl = 17
atomicNumber  Ar = 18
atomicNumber  K  = 19
atomicNumber  Ca = 20
atomicNumber  Sc = 21
atomicNumber  Ti = 22
atomicNumber  V  = 23
atomicNumber  Cr = 24
atomicNumber  Mn = 25
atomicNumber  Fe = 26
atomicNumber  Co = 27
atomicNumber  Ni = 28
atomicNumber  Cu = 29
atomicNumber  Zn = 30
atomicNumber  Ga = 31
atomicNumber  Ge = 32
atomicNumber  As = 33
atomicNumber  Se = 34
atomicNumber  Br = 35
atomicNumber  Kr = 36
atomicNumber  Rb = 37
atomicNumber  Sr = 38
atomicNumber  Y  = 39
atomicNumber  Zr = 40
atomicNumber  Nb = 41
atomicNumber  Mo = 42
atomicNumber  Tc = 43
atomicNumber  Ru = 44
atomicNumber  Rh = 45
atomicNumber  Pd = 46
atomicNumber  Ag = 47
atomicNumber  Cd = 48
atomicNumber  In = 49
atomicNumber  Sn = 50
atomicNumber  Sb = 51
atomicNumber  Te = 52
atomicNumber  I  = 53
atomicNumber  Xe = 54
atomicNumber  Cs = 55
atomicNumber  Ba = 56
atomicNumber  La = 57
atomicNumber  Ce = 58
atomicNumber  Pr = 59
atomicNumber  Nd = 60
atomicNumber  Pm = 61
atomicNumber  Sm = 62
atomicNumber  Eu = 63
atomicNumber  Gd = 64
atomicNumber  Tb = 65
atomicNumber  Dy = 66
atomicNumber  Ho = 67
atomicNumber  Er = 68
atomicNumber  Tm = 69
atomicNumber  Yb = 70
atomicNumber  Lu = 71
atomicNumber  Hf = 72
atomicNumber  Ta = 73
atomicNumber  W  = 74
atomicNumber  Re = 75
atomicNumber  Os = 76
atomicNumber  Ir = 77
atomicNumber  Pt = 78
atomicNumber  Au = 79
atomicNumber  Hg = 80
atomicNumber  Tl = 81
atomicNumber  Pb = 82
atomicNumber  Bi = 83
atomicNumber  Po = 84
atomicNumber  At = 85
atomicNumber  Rn = 86
atomicNumber  Fr = 87
atomicNumber  Ra = 88
atomicNumber  Ac = 89
atomicNumber  Th = 90
atomicNumber  Pa = 91
atomicNumber  U  = 92
atomicNumber  Np = 93
atomicNumber  Pu = 94
atomicNumber  Am = 95
atomicNumber  Cm = 96
atomicNumber  Bk = 97
atomicNumber  Cf = 98
atomicNumber  Es = 99
atomicNumber Fm  = 100
atomicNumber Md  = 101
atomicNumber No  = 102
atomicNumber Lr  = 103
atomicNumber Rf  = 104
atomicNumber Db  = 105
atomicNumber Sg  = 106
atomicNumber Bh  = 107
atomicNumber Hs  = 108
atomicNumber Mt  = 109
atomicNumber  _  = Nothing
