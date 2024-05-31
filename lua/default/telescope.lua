local ok, telescope = pcall(require, 'telescope')
if not ok then
    return
end

telescope.setup {
    defaults = {
        file_ingore_patterns = {
        },
        mappings = {
            i = {
                ["<C-j>"] = "move_selection_next",
                ["<C-k>"] = "move_selection_previous",
                ["jk"] = "close",
            },
        },
    },
    pickers = {
        colorscheme = {
            enable_preview = true,
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,
            case_mode = 'smart_case',
            override_generic_sorter = true,
            override_file_sorter = true,
        },
    }
}

if not vim.fn.has('win32') then
    telescope.load_extension('fzf')
end
