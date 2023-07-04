local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

require'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            diagnositcs = {
                globals = { 'vim' } --Gets reid of the annoying error messages for vim not being a global in lua script
            }
        }
    }
}
