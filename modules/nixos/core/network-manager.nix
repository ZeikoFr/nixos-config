{
  flake.modules.nixos.network-manager = {
    config,
    lib,
    pkgs,
    ...
  }: {
    networking = {
      networkmanager = {
        enable = true;
        plugins = [pkgs.networkmanager-openvpn];
      };
      hostName = "nixos";
    };
  };
}
