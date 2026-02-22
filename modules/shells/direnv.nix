{
  flake.modules.homeManager.base = {
    programs = {
      direnv = {
        enable = true;
        nix-direnv.enable = true;
        config.global.warn_timeout = 0;
        enableZshIntegration = true;
      };
    };
    git.ignores = [
      ".envrc"
      ".direnv"
    ];
  };
}
