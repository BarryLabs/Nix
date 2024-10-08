{ ... }:

{
  imports = [

    # Home Settings.
    ./home/home-manager.nix
    ./home/home-setup.nix

    # Home Programs.
    ./home/programs/mpv.nix
    ./home/programs/zsh.nix
    ./home/programs/nvim.nix
    ./home/programs/kitty.nix
    ./home/programs/zellij.nix
    ./home/programs/zoxide.nix
    ./home/programs/OBS.nix
    ./home/programs/librewolf.nix

    # Home Services.
    #./home/services/syncthing.nix

  ];
}
