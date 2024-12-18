{ ... }:
let
  toggleTermCommands = builtins.map (x: "ToggleTerm${x}") [
    ""
    "SendCurrentLine"
    "SendVisualLines"
    "SendVisualSelection"
    "SetName"
    "ToggleAll"
  ];
in
{
  plugins = {
    toggleterm = {
      enable = true;
      settings = {
        open_mapping = "[[<leader>`]]";
        insert_mappings = false;
        terminal_mappings = false;
        persist_mode = true;
        direction = "tab";
      };
      lazyLoad = {
        enable = true;
        settings = {
          cmd = toggleTermCommands;
          keys = [ "<leader>`" ];
        };
      };
    };
  };
}
