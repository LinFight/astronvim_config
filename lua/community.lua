-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.html-css" },
  -- { import = "astrocommunity.completion.blink-cmp" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.icon.mini-icons" },
  -- { import = "astrocommunity.pack.tailwindcss" },
  -- { import = "astrocommunity.completion.coq_nvim" },
  -- { import = "astrocommunity.pack.python" },
  -- import/override with your plugins folder
}
