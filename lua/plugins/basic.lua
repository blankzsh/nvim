return {
    -- lazy.nvim 自己管理自己的版本
    { "folke/lazy.nvim", lazy = false },

    -- 启动时间分析
    { "dstein64/vim-startuptime", cmd = "StartupTime" },

    -- 中文help doc
    { "yianwillis/vimcdoc", event = "CmdLineEnter" },
}