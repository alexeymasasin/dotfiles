return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()

-- stylua: ignore
local colors = {
  blue   = '#53ffb1',
  cyan   = '#f7cb60',
  black  = '#0f0e15',
  white  = '#f5faff',
  red    = '#c82540',
  violet = '#915fff',
  grey   = '#211e2f',
}

        local rcw_120 = {
            normal = {
                a = { fg = colors.black, bg = colors.violet },
                b = { fg = colors.white, bg = colors.grey },
                c = { fg = colors.white, bg = colors.grey },
            },

            insert = { a = { fg = colors.black, bg = colors.blue } },
            visual = { a = { fg = colors.black, bg = colors.cyan } },
            replace = { a = { fg = colors.black, bg = colors.red } },

            inactive = {
                a = { fg = colors.white, bg = colors.black },
                b = { fg = colors.white, bg = colors.black },
                c = { fg = colors.white },
            },
        }

        local function text()
            return [[%=%F]]
        end

        require("lualine").setup({
            options = {
                theme = rcw_120,
                globalstatus = true,
                component_separators = "│",
                section_separators = { left = "", right = "" },
                -- disabled_filetypes = {
                --     "neo-tree",
                -- },
                ignore_focus = { "neo-tree", "telescope" },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "filename", "branch" },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { "filesize", "encoding", "fileformat", "filetype", "progress" },
                lualine_z = {
                    "location",
                },
            },
            inactive_sections = {
                lualine_a = { "filename" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "location" },
            },
            tabline = {},
            winbar = {},
            extensions = {},
        })
    end,
}
