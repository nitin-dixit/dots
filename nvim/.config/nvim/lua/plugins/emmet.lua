return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_language_server = {
          filetypes = {
            "css",
            "eruby",
            "html",
            "javascript",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "pug",
            "typescriptreact",
            "gohtmltmpl",
            "gotmpl",
          },
          init_options = {
            includeLanguages = {
              gohtmltmpl = "html",
              gotmpl = "html",
            },
          },
        },
      },
    },
  },
}
