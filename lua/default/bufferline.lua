local ok, bline = pcall(require, 'bufferline')
if not ok then
    return
end

require('bufferline').setup {
    options = {
        close_command = "bdelete! %d",
        middle_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",

        indicator_icon = '',
        buffer_close_icon = '',
        modified_icon = '+',
        close_icon = '',
        left_trunc_marker = '',

        right_trunc_marker = '',

        name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
            -- remove extension from markdown files for example
            if buf.name:match('%.md') then
                return vim.fn.fnamemodify(buf.name, ':t:r')
            end
        end,

        max_name_length = 18,
        max_prefix_length = 13,
        tab_size = 15,

        diagnostics = false,

        offsets = {{filetype = "NvimTree", text = "Am I in heaven?" }},

        show_buffer_icons = false, -- disable filetype icons for buffers
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,

        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "thick",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'id',
    }
}

