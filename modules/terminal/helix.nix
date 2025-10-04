{ config, ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    ignores = [
      "./build"
    ];
    settings = {
      theme = "ashen";

      editor = {
        mouse = true;
        middle-click-paste = false;
        line-number = "relative";
        auto-save = true;
        true-color=true;
        undercurl=true;
        color-modes=true;

        statusline = {
          left = [
            "mode"
            "spinner"
          ];
          center = [
            "file-name"
            "file-modification-indicator"
          ];
          right = [
            "diagnostics"
            "position"
            "file-type"
          ];

          mode = {
            normal="𐤲";
            insert="𐤤";
            select="𐤸";
          };
        };

        lsp = {
          display-messages = true;
          display-inlay-hints = true;
        };

        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };
      };
    };
  }; 
}
