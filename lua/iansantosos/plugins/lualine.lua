--[[
-- Custom Lualine component to show attached language server
local clients_lsp = function()
    local bufnr = vim.api.nvim_get_current_buf()

    local clients = vim.lsp.buf_get_clients(bufnr) -- Don't change, breaks the function
    if next(clients) == nil then
        return ""
    end

    local c = {}
    for _, client in pairs(clients) do
        table.insert(c, client.name)
    end
    return " " .. table.concat(c, "|")
end

local custom_catppuccin = require("lualine.themes.catppuccin")

-- Custom colours
custom_catppuccin.normal.b.fg = "#cad3f5"
custom_catppuccin.insert.b.fg = "#cad3f5"
custom_catppuccin.visual.b.fg = "#cad3f5"
custom_catppuccin.replace.b.fg = "#cad3f5"
custom_catppuccin.command.b.fg = "#cad3f5"
custom_catppuccin.inactive.b.fg = "#cad3f5"

custom_catppuccin.normal.c.fg = "#6e738d"
custom_catppuccin.normal.c.bg = "#000000"
]]

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "auto",
                component_separators = "", -- { left = '', right = ''},
                section_separators = { left = "", right = "" },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = {
                    {
                        "filetype",
                        icon_only = true,
                        padding = 1,
                    },
                    { "filename", padding = { left = 0, right = 1 } },
                },
                lualine_c = {
                    {
                        "branch",
                        icon = "",
                    },
                    {
                        "diff",
                        symbols = { added = " ", modified = " ", removed = " " },
                        colored = false,
                    },
                },
                lualine_x = { { "datetime", style = "%B %d | %H:%M" } },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = { "filename" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { { "datetime", style = "%B %d | %H:%M" } },
                lualine_z = { "location" },
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        })
    end,
}
