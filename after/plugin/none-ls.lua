local none_ls = require('null-ls')

local opts = {
    sources = {
        none_ls.builtins.formatting.black
    }
}
return opts




--[[local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
    sources = {
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.diagnostics.black,
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })
            vim.api.nvim_create_autocmds("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.format({bufnr = bufnr})
                end,
            })
        end
    end,
}
return opts--]]

--[[local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
    },
})--]]
