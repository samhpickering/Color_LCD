{ gcc-arm-embedded, stdenvNoCC  }:
stdenvNoCC.mkDerivation rec {
  pname = "850c-firmware";
  version = "1.0.0";

  src = ../firmware;

  buildPhase = ''
    runHook preBuild

    cd 860C_850C/src
    make -f Makefile VERSION="${version}"

    runHook postBuild
  '';

  nativeBuildInputs = [ gcc-arm-embedded ];

  installPhase = ''
    runHook preInstall

    cp main.bin "$out"

    runHook postInstall
  '';
}
