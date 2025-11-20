-- 加载预配置
require('pack/markdown').config()

return {
    -- markdown预览插件 导航生成插件
    {
        "mzlogin/vim-markdown-toc",
        ft = 'markdown',
    },

    {
        "iamcco/markdown-preview.nvim",
        config = function()
            require('pack/markdown').setup()
        end,
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
        cmd = 'MarkdownPreview',
        ft = 'markdown',
    },
}