local ok, telescope = pcall(require, 'telescope')
if not ok then
    return
end

telescope.setup {
    defaults = {
        file_ingore_patterns = {
        },
    },
    pickers = {
        find_files = {
            theme = 'ivy',
        },
        live_grep = {
            theme = 'ivy',
        },
        buffers = {
            theme = 'ivy',
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
