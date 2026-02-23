{config, ...}: {
  configurations.nixos.homelaptop.module = {
    imports = with config.flake.modules.nixos; [
      pc
    ];
  };
}
