-- 加载预配置
require('pack/vim-expand-region').config()
require('pack/interestingwords-nvim').config()
require('pack/vim-visual-multi').config()
require('pack/yaocccc').config()
require('pack/indentmini').config()

return {
    -- vv 快速选中内容插件
    {
        "terryma/vim-expand-region",
        config = function()
            require('pack/vim-expand-region').setup()
        end,
        keys = { "v", "V" },
    },

    -- ff 高亮光标下的word FF取消全部高亮
    {
        "Mr-LLLLL/interestingwords.nvim",
        config = function()
            require('pack/interestingwords-nvim').setup()
        end,
        keys = { 'ff', 'FF' },
    },

    -- 多光标插件
    {
        "mg979/vim-visual-multi",
        config = function()
            require('pack/vim-visual-multi').setup()
        end,
        event = 'CursorHold',
    },

    -- 注释插件 (暂时禁用，需要调试)
    -- {
    --     "yaocccc/vim-comment",
    --     cmd = { 'NToggleComment', 'VToggleComment', 'CToggleComment' },
    -- },

    -- 操作成对的 ""  {}  [] 等的插件
    {
        "yaocccc/vim-surround",
        event = 'ModeChanged',
    },

    -- indentmini 缩进线插件
    {
        "nvimdev/indentmini.nvim",
        config = function()
            require('pack/indentmini').setup()
        end,
        event = 'BufRead',
    },
}