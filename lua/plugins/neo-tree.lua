require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,

    filesystem = {
        filtered_items = {
            visible = false,
            hide_dotfiles = false,
            hide_gitignored = true,
        },
    },
    window = {
        mappings = {
            ["o"] = "open",
            ["s"] = "split_with_window_picker",
            ["v"] = "vsplit_with_window_picker",
        },
        position = "left",
        width = 30,

    },
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.api.nvim_win_get_width(0) >= 150 and vim.fn.argc() > 0 then
      vim.cmd("Neotree")
      vim.cmd("wincmd p")
    end
  end,
})
