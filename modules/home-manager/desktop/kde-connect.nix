{
  flake.modules.homeManager.gui = {pkgs, ...}: {
    home.packages = with pkgs; [kdePackages.kdeconnect-kde];
  };
}
