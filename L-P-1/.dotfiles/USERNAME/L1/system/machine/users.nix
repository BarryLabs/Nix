{ username, ... }:

{
  users = {
    users = {
      ${username} = {
        isNormalUser = true;
        description = "Chandler";
        extraGroups = [ "wheel" "networkmanager" ];
      };
    };
  };
}
