local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

ts.setup {
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { },
    highlight = {
        enable = true,
        disable =  { },
    },
    autotag = { enable = true, },
}
