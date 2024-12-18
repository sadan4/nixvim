{ lib, ... }:
let
  foldFunc = lib.nixvim.mkRaw "require('statuscol.builtin').foldfunc";
  lnumfunc = lib.nixvim.mkRaw "require('statuscol.builtin').lnumfunc";
in
{
  plugins = {
    statuscol = {
      enable = true;
      settings = {
        relculright = true;
        segments = [
          {
            text = [ foldFunc ];
            click = "v:lua.ScFa";
          }
          {
            text = [ "%s" ];
            click = "v:lua.ScSa";
          }
          {
            text = [
              lnumfunc
              " "
            ];
            click = "v:lua.ScLa";
          }
        ];
      };
    };
  };
}
