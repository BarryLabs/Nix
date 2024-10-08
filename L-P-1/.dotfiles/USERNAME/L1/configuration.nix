{ ... }:

{
  imports =    
    [
      # Hardware Configuration
      ./system/machine/hardware-configuration.nix
      
      # System Configuration.
      ./system/machine/boot.nix
      ./system/machine/network.nix
      ./system/machine/encoding.nix
      ./system/machine/sound.nix
      ./system/machine/users.nix
      ./system/machine/packages.nix
      ./system/machine/state.nix
      ./system/machine/flakes.nix      
      ./system/machine/nvidiaPrime.nix 

      # Program Configuration.
      ./system/programs/mtr.nix
      ./system/programs/gnupg.nix

      # Service Configuration.
      ./system/services/openssh.nix
      ./system/services/xserver.nix

      # Virtualisation
      ./system/virtualisation/libvirtd.nix
      ./system/virtualisation/virt-manager.nix

    ];
}
