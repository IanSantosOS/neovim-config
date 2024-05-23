return {
    {
        "ribru17/bamboo.nvim",
        priority = 1000,
        lazy = false,
        options = {
            -- Main options --
            -- NOTE: to use the light theme, set `vim.o.background = 'light'`
            style = "vulgaris", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
            toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
            toggle_style_list = { "vulgaris", "multiplex", "light" }, -- List of styles to toggle between
            transparent = false, -- Show/hide background
            dim_inactive = false, -- Dim inactive windows/buffers
            term_colors = true, -- Change terminal color as per the selected theme style
            ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

            -- Change code style ---
            -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
            -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
            code_style = {
                comments = { italic = false },
                conditionals = { italic = false },
                keywords = {},
                functions = {},
                namespaces = { italic = false },
                parameters = { italic = false },
                strings = {},
                variables = {},
            },

            -- Plugins Config --
            diagnostics = {
                darker = false, -- darker colors for diagnostic
                undercurl = true, -- use undercurl instead of underline for diagnostics
                background = true, -- use background color for virtual text
            },
        },
        config = function()
            require("bamboo").load()
        end,
    },
    {
        "catppuccin/nvim",
        priority = 1000,
        options = {
            flavour = "mocha",
            background = {
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false,
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            no_italic = true, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false,
        },
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        options = {
            terminal_colors = true, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = true,
            italic = false,
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = "hard", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = false,
        },
    },
}
