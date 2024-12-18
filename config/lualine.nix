{ ... }: {
  opts = {
    # Show command LOCation
    sloc = "statusline";
  };
  plugins = {
    lualine = {
      enable = true;
      settings = {
        options = {
          theme = "tokyonight";
        };
        sections = {
            # %S = command location
            lualine_x = ["%S" "encoding" "fileformat" "filetype"];
        };
      };
    };
    web-devicons.enable = true;
  };
}
