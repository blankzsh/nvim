-- 加载预配置
require('pack/tree-sitter').config()
require('pack/nvim-tree').config()
require('pack/nvim-lines').config()
require('pack/ccc').config()

return {
    -- tree-sitter
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require('pack/tree-sitter').setup()
        end,
        build = ':TSUpdate',
        event = 'BufRead',
        dependencies = {
            "nvim-treesitter/playground",
        },
    },

    -- 文件管理器
    {
        "kyazdani42/nvim-tree.lua",
        config = function()
            require('pack/nvim-tree').setup()
        end,
        cmd = { 'NvimTreeToggle', 'NvimTreeFindFileToggle' },
        dependencies = {
            "kyazdani42/nvim-web-devicons",
        },
    },

    -- 状态栏 & 标题栏
    {
        "yaocccc/nvim-lines.lua",
        config = function()
            require('pack/nvim-lines').setup()
        end,
        event = 'VeryLazy',
    },

    -- signcolumn显示折叠信息
    {
        "yaocccc/nvim-foldsign",
        config = function()
            require("nvim-foldsign").setup()
        end,
        event = 'CursorHold',
    },

    -- 颜色选择器
    {
        "uga-rosa/ccc.nvim",
        config = function()
            require('pack/ccc').setup()
        end,
        cmd = { 'CccPick', 'CccHighlighterEnable' },
    },
}