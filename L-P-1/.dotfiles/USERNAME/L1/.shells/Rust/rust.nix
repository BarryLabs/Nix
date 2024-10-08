{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  buildInputs = with pkgs; [

    pkg-config

    cargo
    clippy

    rustc
    rustfmt
    rust-analyzer
  
  ];

  RUST_BACKTRACE = 1;
}
