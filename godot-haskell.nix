{ fetchFromGitHub, mkDerivation, aeson, ansi-wl-pprint, base, bytestring, c2hs,
  casing, colour, containers, extra, hpack, lens, linear, mtl, parsec, parsers,
  stdenv, stm, template-haskell, text, unordered-containers, vector
}:

mkDerivation {
  pname = "godot-haskell";
  version = "3.1.0.0";
  src = fetchFromGitHub {
    owner = "SimulaVR";
    repo = "godot-haskell";
    rev = "eda682e0f1071651f4e21959a32fefbf9cef5ea8";
    sha256 = "170cc6w3q2z87br9ci2fsr9ix1kz77n4i5dsyh0yi9hd37f2cas3";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    aeson ansi-wl-pprint base bytestring casing colour containers extra lens
    linear mtl parsec parsers stm template-haskell text
    unordered-containers vector
  ];
  libraryToolDepends = [ c2hs hpack ];
  doHaddock = false;
  preConfigure = "hpack";
  homepage = "https://github.com/KaneTW/godot-haskell#readme";
  description = "Haskell bindings for the Godot game engine API";
  license = stdenv.lib.licenses.bsd3;
}
