require("lualine").setup({
  options = {
    theme = "auto",
    -- component_separators = '',
    -- section_separators = { left = '', right = '' },
    -- section_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    section_separators = "",
    component_separators = "|",
    globalstatus = vim.o.laststatus == 3,
    disabled_filetypes = {
      statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" },
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = {
      { "diagnostics" },
      { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      { "filename", path = 1 },
    },
    lualine_x = {
      "encoding",
      -- "fileformat",
      "filetype",
    },
    lualine_y = {
      { "progress", separator = " ", padding = { left = 1, right = 0 } },
      { "location", padding = { left = 0, right = 1 } },
    },
    lualine_z = {
      function()
        return " " .. os.date("%I:%M:%S %p")
      end,
    },
  },
  extensions = { "neo-tree", "fzf" },
})
