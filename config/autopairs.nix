{ ... }:
{
  plugins = {
    nvim-autopairs = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          options = {
            event = "InsertEnter";
          };
        };
      };
    };
  };
}
