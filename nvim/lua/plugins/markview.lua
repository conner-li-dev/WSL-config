---@type LazyPluginSpec
return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = { "saghen/blink.cmp" },
    ---@type markview.config
    opts = {
        preview = {
            icon_provider = "devicons"
        }
    }
}
