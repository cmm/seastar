{ pkgs ? import <nixpkgs-unstable> {} }:
with pkgs; llvmPackages_11.stdenv.mkDerivation {
  name = "ook";
  nativeBuildInputs = [ cmake ninja pkgconfig python3 ragel stow gcc ];
  buildInputs = [
    boost17x
    c-ares
    cryptopp
    fmt
    gmp
    gnutls
    hwloc
    libsystemtap
    libtasn1
    libxfs
    libyamlcpp
    lksctp-tools
    lz4
    numactl
    openssl
    p11-kit
    protobuf
    valgrind
  ];
}
