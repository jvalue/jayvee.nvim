Features:
  - Associates the `.jv` extension with the `jayvee` filetype
  - Enables very basyic vim syntax highlighting for jayvee files
  - Configures the jayvee-language-server using [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

This plugin does NOT:
  - provide the language-server itself
  - provide treesitter based highlighting

# Installation
## [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
  {
    'jvalue/jayvee.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
    },
    main = 'jayvee',
    init = function(_)
      vim.filetype.add { extension = { jv = 'jayvee' } }
    end,
    ft = 'jayvee',
    opts = {
        -- standard nvim-lspconfig options
    },
  },
```
## [mini.deps](https://github.com/echasnovski/mini.deps)
```lua
  MiniDeps.add({
    source = "jvalue/jayvee.nvim",
    depends = { "neovim/nvim-lspconfig" },
  })

  require("jayvee").setup({
    -- standard nvim-lspconfig options
  })
```
