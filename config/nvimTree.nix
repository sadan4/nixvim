{ lib, ... }:
let
  closeTreeKeymap = lib.nixvim.mkRaw ''
    function(bufnr)
        local api = require("nvim-tree.api")

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.set("n", "<C-t>", api.tree.close, opts("close tree with ctrl+t"))
    end
  '';
in
{
  globals = {
    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
  };
  plugins = {
    nvim-tree = {
      enable = true;
      onAttach = closeTreeKeymap;
    };
  };
}
