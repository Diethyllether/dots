{ config, ... }:

{
  programs.wezterm= {
    enable = true;
    enableZshIntegration = true;
        colorSchemes = {
      Ashen = {
        foreground = "#b4b4b4";
        background = "#121212";

        cursor_bg = "#C4693D";
        cursor_fg = "#121212";
        cursor_border = "#C4693D";

        selection_fg = "#121212";
        selection_bg = "#89492a";

        scrollbar_thumb = "#535353";

        split = "#535353";

        ansi = [
          "#121212"
          "#C53030"
          "#4A8B8B"
          "#E5A72A"
          "#4A8B8B"
          "#B14242"
          "#D87C4A"
          "#b4b4b4"
        ];

        brights = [
          "#535353" 
          "#DF6464" 
          "#4A8B8B" 
          "#E49A44" 
          "#4A8B8B" 
          "#D87C4A" 
          "#E49A44" 
          "#e5e5e5" 
        ];

        indexed = {
          "16" = "#C4693D"; 
          "17" = "#DF6464"; 
        };

        tab_bar = {
          background = "#121212";
          
          active_tab = {
            bg_color = "#C4693D";
            fg_color = "#121212";
            intensity = "Bold";
          };

          inactive_tab = {
            bg_color = "#1d1d1d";
            fg_color = "#949494";
          };

          inactive_tab_hover = {
            bg_color = "#212121";
            fg_color = "#b4b4b4";
          };

          new_tab = {
            bg_color = "#1d1d1d";
            fg_color = "#949494";
          };

          new_tab_hover = {
            bg_color = "#212121";
            fg_color = "#b4b4b4";
          };
        };
      };
    };
    
    extraConfig = ''
      return {
        color_scheme = "Ashen",
        window_background_opacity = 0.9,
        enable_tab_bar = false,
        font = wezterm.font_with_fallback({
          "JetBrains Mono",
          "Noto Sans Lycian",
          "Noto Sans Symbols",
        }),
      }
    '';
  };
}
