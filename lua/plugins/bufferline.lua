vim.opt.termguicolors = true

require("bufferline").setup({
  options = {
    close_command = function(n) vim.api.nvim_buf_delete(n, { force = true }) end,
    right_mouse_command = function(n) vim.api.nvim_buf_delete(n, { force = true }) end,
    diagnostics = "nvim_lsp",
    always_show_bufferline = false,
    diagnostics_indicator = function(_, _, diag)
      local ret = ""
      if diag.error then
        ret = ret .. "E" .. diag.error .. " "
      end
      if diag.warning then
        ret = ret .. "W" .. diag.warning
      end
      return vim.trim(ret)
    end,
    offsets = {
      {
        filetype = "neo-tree",
        text = "Neo-tree",
        highlight = "Directory",
        text_align = "left",
      },
    },
  },
})
