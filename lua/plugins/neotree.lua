require("neo-tree").setup({
    close_if_last_window = true,
    --    popup_border_style = "rounded",
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
            -- ["<CR>"] = "open",
            ["o"] = "open",
            -- ["s"] = "split_with_window_picker",
            -- ["v"] = "vsplit_with_window_picker",
            -- ["t"] = "open_tabnew",
            -- ["a"] = "add",
            -- ["d"] = "delete",
            -- ["r"] = "rename",
            -- ["y"] = "copy_to_clipboard",
            -- ["x"] = "cut_to_clipboard",
            -- ["p"] = "paste_from_clipboard",
            -- ["<"] = "prev_source",
            -- [">"] = "next_source",
        },
        position = "left",
        width = 30,

    },
})
