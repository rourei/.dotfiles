-- User commands
vim.api.nvim_create_user_command( 'Jsonf', '%!jq .', {} )
vim.api.nvim_create_user_command( 'Shebang', ':normal! 0i#!/usr/bin/env bash<ESC>', {} )
vim.api.nvim_create_user_command( 'ScriptDir', ':normal! 0iSCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"<ESC>', {} )
