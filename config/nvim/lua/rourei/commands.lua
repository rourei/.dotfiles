-- User commands
vim.api.nvim_create_user_command( 'Jsonf', '%!jq .', {} )
