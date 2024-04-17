This plugin allows neovim to recognize jayvee files and configures the jayvee-language-server. It does NOT install the language server itself.

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
