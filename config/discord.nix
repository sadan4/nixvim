{ lib, ... }:
let
  updateCallback = lib.nixvim.mkRaw ''
    function()
        package.loaded.presence:update()
    end
  '';
in
{
  autoCmd = [
    {
      callback = updateCallback;
      event = [
        "BufEnter"
        "BufWinEnter"
      ];
    }
  ];
  plugins = {
    presence-nvim = {
      enable = true;
      autoUpdate = true;
      neovimImageText = "A text editor of all time.";
      logLevel = null;
      debounceTimeout = 5;
      enableLineNumber = true;
      buttons = [
        {
          label = "Git";
          url = "https://github.com/sadan4";
        }
        {
          label = "My Site";
          url = "https://sadan.zip";
        }
      ];
    };
  };
}
