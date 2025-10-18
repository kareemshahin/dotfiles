return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { 
          "pyright", 
          "gopls", 
          "terraformls", 
          "tflint" 
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
