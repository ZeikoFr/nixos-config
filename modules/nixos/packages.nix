{
  flake.modules.nixos.core = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      vim
      gparted
      dua
      fd
      file
      git
      killall
      ncdu
      ripgrep
      tmux
      tree
      unzip
      wget
      zip

      # Network
      dig # Domain name server
      lsof

      # System monitor
      btop
      htop
      systemd-manager-tui
    ];
  };
}
