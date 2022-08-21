-- lsp_signature.nvim
lsp_signature_cfg = {
    hint_enable = true,
    hint_prefix = "",
    hint_scheme = "String",
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
        border = "none" -- double, rounded, single, shadow, none
    },
    floating_window = true,
    doc_lines = 0,
}
require "lsp_signature".setup(lsp_signature_cfg)


-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'clangd', 'pyright' }
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = {
            -- This will be the default in neovim 0.7+
            debounce_text_changes = 150,
        }
    }
end
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').clangd.setup {
    on_attach = on_attach,
    cmd = {
        "clangd",
        "--background-index",
        "--pch-storage=memory",
        "--clang-tidy",
        "--all-scopes-completion",
        "--pretty",
        "--header-insertion=never",
        "--header-insertion-decorators",
        "-j=4",
    },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    -- root_dir = utils.root_pattern("compile_commands.json", "compile_flags.txt", ".git")
    init_option = { fallbackFlags = { "-std=c++2a" } }
}

require('lspconfig').pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
