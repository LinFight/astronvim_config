-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    [";"] = { ":" },
    -- ["f"] = {
    --   function()
    --     local focusable_windows_on_tabpage = vim.tbl_filter(
    --       function(win) return vim.api.nvim_win_get_config(win).focusable end,
    --       vim.api.nvim_tabpage_list_wins(0)
    --     )
    --     require("leap").leap { target_windows = focusable_windows_on_tabpage }
    --   end,
    --   desc = "leap bidirectional search",
    -- },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<esc>"] = { [[<C-\><C-n>]] },
    ["<C-w>"] = { [[<C-\><C-n><C-w>]] },

    -- ["jk"   ] = [[<C-\><C-n>]], opts)
    -- ["<C-h>"] = [[<Cmd>wincmd h<CR>]], opts)
    -- ["<C-j>"] = [[<Cmd>wincmd j<CR>]], opts)
    -- ["<C-k>"] = [[<Cmd>wincmd k<CR>]], opts)
    -- ["<C-l>"] = [[<Cmd>wincmd l<CR>]], opts)
    -- ["<C-w>"] = [[<C-\><C-n><C-w>]], opts)
  },
  i = {},
}
