{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    tabout-nvim
  ];
  extraConfigLua = ''
      require("tabout").setup({
    	act_as_tab = false, -- shift content if tab out is not possible
    	enable_backwards = false, -- well ...
    	tabouts = {
    		{ open = "'", close = "'" },
    		{ open = '"', close = '"' },
    		{ open = "`", close = "`" },
    		{ open = "(", close = ")" },
    		{ open = "[", close = "]" },
    		{ open = "{", close = "}" },
    		{ open = "{", close = "}" },
            { open = "<", close = ">" }
    	},
    })'';
}
