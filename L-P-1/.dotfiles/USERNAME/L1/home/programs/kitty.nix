{ pkgs, font, ... }:

{
  programs = {
    kitty = {
      enable = true;
      font = {
        name = font;
      };
      themeFile = "Catppuccin-Macchiato";
      shellIntegration = {
        enableZshIntegration = true;
      };
      settings = {
        shell = "${pkgs.zsh}/bin/zsh";
        editor = "${pkgs.neovim}/bin/nvim";
        copy_on_select = true;
        cursor_blink_interval = 0;
        background_opacity = "0.85";
        window_padding_width = "8";
        disable_ligatures = "cursor";
      };
    };
  };
}
