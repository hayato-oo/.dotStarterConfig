{ inputs, outputs, config, lib, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./security.nix
    ./time.nix
    ./localization.nix

  ];
  

}
