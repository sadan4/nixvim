{ lib, ... }:
let
  ufoChars = lib.nixvim.mkRaw "[[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]";
in
{
  imports = [
    ./statuscol.nix
  ];
  opts = {
    foldcolumn = "1";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
    fillchars = ufoChars;
  };
  plugins = {
    nvim-ufo = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          options = {
            event = "LspAttach";
          };
        };
      };
    };
  };
}
