{ ... }:
{
  plugins = {
    colorizer = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          options = {
            event = "BufEnter";
          };
        };
      };
    };
  };
}
