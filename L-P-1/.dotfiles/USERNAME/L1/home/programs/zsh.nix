{ ... }:

{
  programs = {
    zsh = {
      enable = true;
      autocd = true;
      enableCompletion = true;
      autosuggestion = {
        enable = true;
        highlight = "fg=#996300,bold,underline";
      };

      syntaxHighlighting = {
        enable = true;
      };
      shellAliases = {
        ip = "ip a";
      };
      oh-my-zsh = {
        enable = true;
	      theme = "cypher";
      };
    };
  };
}
