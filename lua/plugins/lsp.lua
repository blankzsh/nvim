-- 加载预配置
require('pack/coc').config()
require('pack/wilder').config()
require('pack/copilot').config()

return {
    -- coc-nvim
    {
        "neoclide/coc.nvim",
        config = function()
            require('pack/coc').setup()
        end,
        branch = 'release',
        event = { 'InsertEnter', 'CmdLineEnter', 'CursorHold' },
    },

    -- wilder 弹出式命令行
    {
        "gelguy/wilder.nvim",
        config = function()
            require("pack/wilder").setup()
        end,
        event = 'CmdlineEnter',
    },

    -- github copilot
    {
        "github/copilot.vim",
        config = function()
            require('pack/copilot').setup()
        end,
        event = 'InsertEnter',
    },
}