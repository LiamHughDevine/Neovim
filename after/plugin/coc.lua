-- Enable auto-completion
vim.api.nvim_command('autocmd FileType javascript setl omnifunc=coc#complete#omnifunc')

-- Enable snippet expansion
vim.g.coc_snippet_next = '<tab>'
