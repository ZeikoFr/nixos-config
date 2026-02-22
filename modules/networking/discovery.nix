{
  flake.modules.nixos.pc = {
    services.avahi = {
      enable = true;
      nssmdns4 = true;
    };
  };
}
