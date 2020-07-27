{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "validated-molecule"
, dependencies = [ "arrays", "console", "effect", "lists", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
, repository = "https://github.com/lukasturcani/validated-molecule"
, license = "MIT"
}
