{lib, ...}: {
  flake.modules = {
    nixos.efi.boot.loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = lib.mkDefault "nodev";
        zfsSupport = true;
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
