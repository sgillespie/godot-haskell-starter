{ nixpkgs ? import ./pinned-nixpkgs.nix {}
, ghc
}:

with nixpkgs;

haskell.lib.buildStackProject {
  inherit ghc;
  name = "godot-haskell";
  buildInputs = [];
}


