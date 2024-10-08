{
    # Change This !!!
  description = "DESCRIPTION";
    # Change This !!!  
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
  };
  outputs = { nixpkgs, home-manager, ... }: 
    let

      # System.
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      
      # Change This!!!

      # System Settings.
      hostname = "HOST";
      username = "USERNAME";
      timezone = "America/Chicago";
      locale = "en_US.UTF-8";
      state = "24.05";
      sysLib = nixpkgs.lib;
      
      # User Settings.
      name = "NAME";
      alias = "ALIAS";
      homeDir = "/home/"+name;
      dotDir = "~/.dotfiles";
      homeState = "24.05";
      fontpkg = "Hack";
      font = "Hack Nerd Font";
    
      # Change This!!!

    in {
    nixosConfigurations = {
      ${hostname} = sysLib.nixosSystem {
        modules = [ ./USERNAME/L1/configuration.nix ];
        inherit system;
        specialArgs = {
          inherit hostname;
          inherit username;
          inherit timezone;
          inherit locale;
          inherit state;
        };
      };
    };
    homeConfigurations = {
      ${username} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./USERNAME/L1/home.nix ];
        extraSpecialArgs = {
          inherit name;
          inherit alias;
          inherit homeDir;
          inherit dotDir;
          inherit homeState;
          inherit font;
          inherit fontpkg;
        };
      };
    };
  };
}
