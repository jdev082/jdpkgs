{ stdenv, lib }:

stdenv.mkDerivation rec {
  name = "nx-utils-${version}";
  version = "1.0";
  src = ./.;
  installPhase = ''
    mkdir -p $out
    install -Dm755 nxc-autobk.sh $out/nxc-autobk
    install -Dm755 nxc-bkdiff.sh $out/nxc-bkdiff
  '';
  meta = with lib; {
    description = "Additional utilities for working with a NixOS system.";
    license = licenses.mit;
    maintainers = [ maintainers.jdev082 ];
    platforms = platforms.all;
  };
}