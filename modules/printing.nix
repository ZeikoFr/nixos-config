{pkgs, ...}: {
  flake.modules.nixos.pc = {
    services.printing = {
      enable = true;
      drivers = with pkgs; [
        cups-filters
        cups-browsed
      ];
    };
  };
}
