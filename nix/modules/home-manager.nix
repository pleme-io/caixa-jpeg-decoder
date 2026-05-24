# nix/modules/home-manager.nix — auto-generated from jpeg-decoder.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.jpeg-decoder; in {
  options.programs.jpeg-decoder = {
    enable = lib.mkEnableOption "jpeg-decoder";
    package = lib.mkOption { type = lib.types.package; default = pkgs.jpeg-decoder or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
