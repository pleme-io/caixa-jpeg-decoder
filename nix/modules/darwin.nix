# nix/modules/darwin.nix — auto-generated from jpeg-decoder.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.jpeg-decoder; in {
  options.services.jpeg-decoder = {
    enable = lib.mkEnableOption "jpeg-decoder";
    package = lib.mkOption { type = lib.types.package; default = pkgs.jpeg-decoder or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
