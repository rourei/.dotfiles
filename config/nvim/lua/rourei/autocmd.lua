local api = vim.api

-- Setting the fold method based on Treesitter parser existence, see https://stackoverflow.com/a/79405264
-- api.nvim_create_autocmd({ "FileType" }, {
--   callback = function()
--             if require("nvim-treesitter.parsers").has_parser() then
--                 vim.opt.foldmethod = "expr"
--                 vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
--             else
--                 vim.opt.foldmethod = "syntax"
--             end
--         end,
--     })

api.nvim_create_autocmd("FileType", {
  pattern = { "vim" },
  command = "setlocal foldmethod=marker foldmarker={{{,}}}",
})

api.nvim_create_autocmd("BufRead", {
  callback = function()
    if vim.api.nvim_buf_line_count(0) < 60 then
      vim.opt.foldenable = false
    else
      vim.opt.foldenable = true
    end
  end,
})

