vim.lsp.config('jdtls', {
    root_markers = { '.root', 'mvnw', 'gradlew', 'settings.gradle', 'settings.gradle.kts', '.git', 'build.xml', 'pom.xml', 'build.gradle', 'build.gradle.kts' },
    settings = {
        java = {
            project = {
                sourcePaths = { 'src', 'src/main/java', }
            }
        }
    },
})

vim.lsp.config('clangd', {
    root_markers = { '.root', ".clangd", ".clang-tidy", ".clang-format", "compile_commands.json", "compile_flags.txt", "configure.ac", ".git" },
})

vim.lsp.config('basedpyright', {
    root_markers = { '.root', '.venv', 'venv', '.git' },
    settings = {
        venvPath = ".",
        venv = ".venv",
    },
})

vim.lsp.config('eslint', {
    settings = {
        run = "onSave",
    }
})

---@type vim.lsp.Config
vim.lsp.config.verible = {
    cmd = { 'verible-verilog-ls',
        '--ruleset=none',
        '--rules_config_search=false',
        '--indentation_spaces', '4' },
    on_attach = function(client)
        client.server_capabilities.hoverProvider = false
        client.server_capabilities.definitionProvider = false
        client.server_capabilities.referencesProvider = false
        client.server_capabilities.documentHighlightProvider = false

        client.server_capabilities.documentFormattingProvider = true
    end
}

return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        {
            "mason-org/mason.nvim",
        },
        {
            "neovim/nvim-lspconfig",
        },
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                'html',
                'cssls',
                'jdtls',
                'vtsls',
                'clangd',
                'eslint',
                'lua_ls',
                'verible',
                'tailwindcss',
                'basedpyright',
                'slang_server',
                'glsl_analyzer',
            },
            automatic_installation = true,
        })
    end,
}
