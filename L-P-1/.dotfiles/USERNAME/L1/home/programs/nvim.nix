{ pkgs, ... }:

{
  programs = 
  let
    toFile = file: "lua <<EOF\n${builtins.readFile file}\nEOF\n";
  in {
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      extraPackages = with pkgs; [
        ripgrep
        wl-clipboard
        # LSP Servers
        nil
        gopls
        pyright
        rust-analyzer
        lua-language-server
      ];
      extraConfig = ''
        lua << EOF
        vim.defer_fn(function()
        vim.cmd [[
            luafile ~/.dotfiles/Chandler/L1/home/.config/nvim/lua/settings.lua
          ]]
        end, 70)
        EOF
      '';
      plugins = with pkgs.vimPlugins; [
        # Telescope
        popup-nvim
        plenary-nvim
        telescope-nvim
        telescope-fzf-native-nvim
        # Theme
        {
          plugin = tokyonight-nvim;
          config = "colorscheme tokyonight-storm";
        }
        # Treesitter
        {
          plugin = nvim-treesitter.withAllGrammars;
          config = toFile ../.config/nvim/lua/treesitter.lua;
        }
        # Vim-Wiki
        { 
          plugin = vimwiki;
          config = toFile ../.config/nvim/lua/vimwiki.lua;
        }
        # Nvim-Tree
        nvim-web-devicons
        {
          plugin = nvim-tree-lua;
          config = toFile ../.config/nvim/lua/nvimtree.lua;
        }
        # Language Servers
        {
          plugin = nvim-lspconfig;
          config = toFile ../.config/nvim/lua/lsp.lua;
        }
        # Cokeline
        {
          plugin = nvim-cokeline;
          config = toFile ../.config/nvim/lua/cokeline.lua;
        }
      ];
    };
  };
}
