-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

-- Prepend mise shims to PATH
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH

-- 启用软换行
vim.opt.wrap = true -- 启用软换行
vim.opt.linebreak = true -- 在单词边界处换行
vim.opt.breakindent = true -- 使换行后的行有缩进
