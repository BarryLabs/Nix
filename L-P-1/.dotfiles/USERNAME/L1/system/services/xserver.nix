{ pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
      displayManager = {
        gdm = {
          enable = true;
        };
      };
      desktopManager = {
        gnome = {
          enable = true;
        };
      };
      excludePackages = with pkgs; [
        xterm
      ];
      videoDrivers = [ "nvidia" ];
    };
  };
  environment = {
    gnome = {
      excludePackages = (with pkgs; [
        gedit
    	gnome-tour
      ]) ++ (with pkgs; [
        eog
        tali
        yelp
        baobab
        cheese
        totem
	      epiphany
        geary
        evince
	      iagno
	      hitori
        atomix
        seahorse
        simple-scan
        gnome-logs
        gnome-maps
        gnome-music
        gnome-contacts
        gnome-characters
        gnome-font-viewer
        gnome-disk-utility
        gnome-initial-setup
        pkgs.gnome-console
        pkgs.gnome-connections
        pkgs.gnome-text-editor
      ]);
    };
  };
}
