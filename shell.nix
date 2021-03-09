{ nixpkgs ? import <nixpkgs> {},
  compiler ? "default",
  doBenchmark ? false
}:

let
  inherit (nixpkgs) pkgs;

  haskellPackages =
    if compiler == "default" then
      pkgs.haskellPackages
    else
      pkgs.haskell.packages.${compiler};

  f = { mkDerivation, stdenv, base, godot-haskell, linear, text , vector, stm }:
    mkDerivation {
      pname = "godot-haskell-starter";
      version = "3.1.0.0";
      src = ./.;
      libraryHaskellDepends = [
        base
        godot-haskell
        linear
        text
        vector
        stm
      ];
      libraryToolDepends = [];
      homepage = "https://github.com/sgillespie/godot-haskell-starter#readme";
      license = stdenv.lib.licenses.bsd3;
    };

  variant =
    if doBenchmark then
      pkgs.haskell.lib.doBenchmark
    else
      pkgs.lib.id;

  drv = variant (haskellPackages.callPackage f {
    godot-haskell = haskellPackages.callPackage ./godot-haskell.nix {
      fetchFromGitHub = pkgs.fetchFromGitHub;
    };
  });

in
  if pkgs.lib.inNixShell then drv.env else drv
