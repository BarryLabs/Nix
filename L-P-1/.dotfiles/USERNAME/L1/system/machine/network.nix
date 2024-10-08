{ timezone, hostname, ... }:

{
  time = {
    timeZone = timezone;
  };
  networking = {
    hostName = hostname;
    networkmanager = {
      enable = true;
    };
    firewall = {
      enable = true;
      allowedUDPPorts = [];
      allowedTCPPorts = [];
        # Allow KDE Connect
      extraCommands = ''
        iptables -A nixos-fw -p tcp --source 192.168.1.1/24 --dport 1714:1764 -j nixos-fw-accept
        iptables -A nixos-fw -p udp --source 192.168.1.1/24 --dport 1714:1764 -j nixos-fw-accept
      '';
    };
  };
}
