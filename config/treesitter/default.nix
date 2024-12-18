{ ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        ensure_installed = "all";
        highlight = {
          enable = true;
        };
        incremental_selection = {
          enable = true;
        };
        indent = {
          enable = true;
        };
      };
    };
  };
}
