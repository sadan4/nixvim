{ ... }:
{
  plugins = {
    comment = {
      enable = true;
      settings = {
        toggler = {
          line = "<C-/>";
        };
        opleader = {
          line = "<C-/>";
        };
      };
      lazyLoad = {
        enable = true;
        settings = {
          options = {
            keys = [ "<C-/" ];
          };
        };
      };
    };
  };
}
