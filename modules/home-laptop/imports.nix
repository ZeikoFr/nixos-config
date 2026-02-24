{config, ...}: {
  configurations.nixos.home-laptop.module = {
    imports = with config.flake.modules.nixos; [
      efi
      pc
    ];
  };
}
