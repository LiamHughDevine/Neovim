require('mason').setup {
    ensure_installed = { 'lua_ls', 'black', 'debugpy', 'flake8',
                         'isort', 'mypy', 'pylint', 'pyright', 'ruff'},
}
