-- 加载预配置
require('pack/vim-floaterm').config()
require('pack/fzf').config()

return {
    -- 浮动终端
    {
        "voldikss/vim-floaterm",
        config = function()
            require('pack/vim-floaterm').setup()
        end,
        cmd = 'FloatermToggle',
    },

    -- fzf
    {
        "ibhagwan/fzf-lua",
        config = function()
            require('pack/fzf').setup()
        end,
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- 快速echo、print
    {
        "yaocccc/vim-echo",
        cmd = "VECHO",
    },

    -- 退出输入模式时自动切换到英文
    {
        "yaocccc/vim-fcitx2en",
        event = 'InsertLeavePre',
    },
}