local function lsp_mappings(bufnr)
    local bufmap = vim.api.nvim_buf_set_keymap 
    local opts = { noremap = true, silent = true }
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    bufmap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    bufmap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    bufmap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    bufmap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    bufmap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    bufmap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    bufmap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    --bufmap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    bufmap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    bufmap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    bufmap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    bufmap(bufnr, 'n', '<space>lf', '<cmd>lua vim.lsp.buf.format()<CR>', opts) 
end

local function lsp_highlight_document(client)
    -- Set autocommands conditional on server_capabilities
    if client.server_capabilities.documentHighlight then
        vim.api.nvim_exec(
        [[
        augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
        ]],
        false
        )
    end
end


-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    lsp_mappings(bufnr)
    lsp_highlight_document(client)

    -- Enable document formatting if the server supports it
    if client.server_capabilities.document_formatting then
        vim.api.nvim_exec([[
          augroup Format
            autocmd!
            autocmd BufWritePre *.cpp,*.h,*.c,*.hpp,*.cxx,*.hxx,*.cc,*.hh,*.mm,*.m,*.cu lua vim.lsp.buf.formatting_sync(nil, 1000)
          augroup END
        ]], false)
    end
end

local signs = {
    { name = "DiagnosticSignError", text = "X" },
    { name = "DiagnosticSignWarn", text = "!" },
    { name = "DiagnosticSignHint", text = "?" },
    { name = "DiagnosticSignInfo", text = "?" },
}

for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

vim.diagnostic.config(
{
    virtual_text = false,
    underline = false,
    signs = {
        active = signs,
    },
    update_in_insert = false,
    severity_sort = true,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
}
)


local servers = {
    {
        name = 'clangd',
        cmd = { 'clangd', '--clang-tidy' },
    },
    'rust_analyzer',
    'pylsp',
    'tsserver',
    'tailwindcss',
    'svelte',
    'cmake',
    'volar',
}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
for _, lsp in pairs(servers) do
    local serverConfig = lsp
    if type(lsp) == 'string' then
        serverConfig = { name = lsp }
    end

    require('lspconfig')[serverConfig.name].setup {
        cmd = serverConfig.cmd,
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end

