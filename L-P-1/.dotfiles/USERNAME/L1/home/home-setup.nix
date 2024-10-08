{ pkgs, name, homeDir, fontpkg, homeState, ... }:

{
  home = {
    username = name;
    homeDirectory = homeDir;
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ fontpkg ]; })
      
      # My System
      git
      libreoffice-fresh
      jellyfin-media-player
    
    ];
    stateVersion = homeState;
  };
}
