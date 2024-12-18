{ pkgs, lib, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "eregex";
      src = pkgs.fetchFromGithub {
        owner = "sadan4";
        repo = "eregex";
        rev = "09b444731e2ad806926a4a48d063bf54be1fd6a2";
        hash = lib.fakeHash;
      };
    })
  ];
  globals = {
    eregex_default_enable = 1;
  };
}
