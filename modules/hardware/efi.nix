{lib, ...}: {
  flake.modules = {
    nixos.efi.boot.loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        enable = true;
        configurationLimit = 10;
      };
    };

    homeManager.base = {pkgs, ...}: {
      home.packages = [
        pkgs.efivar
        pkgs.efibootmgr
      ];
    };
  };
}
