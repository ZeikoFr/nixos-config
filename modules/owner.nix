{config, ...}: {
  flake = {
    meta.owner = {
      email = "";
      name = "zeiko";
      username = "zeiko";
    };

    modules = {
      nixos.base = {
        users.users.${config.flake.meta.owner.username} = {
          isNormalUser = true;
          initialPassword = "";
          extraGroups = ["input"];
        };

        nix.settings.trusted-users = [config.flake.meta.owner.username];
      };
    };
  };
}
