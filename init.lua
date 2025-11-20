require('profile')  -- 基础配置

-- 安装和配置lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/site/pack/lazy/opt/lazy.nvim"
if not vim.fn.isdirectory(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim配置
local lazy_opts = {
    default = {
        lazy = false,
        version = nil,
        branch = nil,
        config = nil,
        event = nil,
        cmd = nil,
        ft = nil,
        keys = nil,
        module = nil,
        priority = nil,
        optional = false,
        enabled = true,
        cond = nil,
        dir = nil,
        dependencies = nil,
    },
    ui = {
        border = "rounded",
        icons = {
            cmd = " ",
            config = " ",
            event = " ",
            ft = " ",
            init = " ",
            import = " ",
            keys = " ",
            lazy = " ",
            loaded = " ",
            not_loaded = " ",
            plugin = " ",
            runtime = " ",
            source = " ",
            start = " ",
            task = " ",
            list = {
                " ",
                " ",
                " ",
                " ",
            },
        },
    },
    performance = {
        cache = {
            enabled = true,
        },
        reset_packpath = true,
        rtp = {
            reset = true,
            paths = {},
        },
    },
    change_detection = {
        enabled = true,
        notify = false,
    },
}

-- 加载lazy.nvim
require("lazy").setup("plugins", lazy_opts)

require('keymap')   -- 按键配置
require('autocmd')  -- 自动命令配置
