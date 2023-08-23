local ok, toggleterm = pcall(require, "toggleterm")
if not ok then
    return
end

toggleterm.setup {
    start_in_insert = true,
}
