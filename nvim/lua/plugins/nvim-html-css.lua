return {
    "Jezda1337/nvim-html-css",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
        enable_on = {
            "html",
            "htmldjango",
            "tsx",
            "jsx",
            "erb",
            "svelte",
            "vue",
            "blade",
            "php",
            "templ",
            "astro",
        },
        handlers = {
            definition = {
                bind = "gd"
            },
            hover = {
                bind = "K",
                wrap = true,
                border = "none",
                position = "cursor",
            },
        },
        documentation = {
            auto_show = true,
        },
        peek = {
            enabled = true,
            border = "rounded",
            position = "center",
            width = 0.5,
            height = 0.5,
            focus = true,
            style = "minimal",
        },
        style_sheets = {
            "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css",
            "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css",
        },
    },
}
