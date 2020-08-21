:author: Lukas Turcani
:Documentation: https://pursuit.purescript.org/packages/purescript-validated-molecule

==================
validated-molecule
==================

A PureScript library for creating valid molecules.

The issue with molecule is that bonds reference atoms by id, but
how do you know the atom id a bond holds is valid?

``validated-molecule`` provides a ``Molecule`` class which is created
only through constructors which provide validation. This means that
all constructors return ``Maybe Molecule``. Only molecules with valid
atoms and bonds are constructed as a result.

Installation
============

To install use ``spago``::

    $ spago install validated-molecule
