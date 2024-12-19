> [!WARNING]
> This branch requires the nightly version of neovim.
> If you don't use neovim nightly, you may want to look at the [main](https://github.com/jvalue/jayvee.nvim) branch.

# Jayvee.nvim
Features:
  - Associates the `.jv` extension with the `jayvee` filetype
  - Enables very basyic vim syntax highlighting for jayvee files
  - Configures the jayvee-language-server

> [!IMPORTANT]
> In addition to this plugin, you also have to install the language server.
> The most convenient way for that is [mason.nvim](https://github.com/williamboman/mason.nvim).

# Installation
## [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
  {
    'jvalue/jayvee.nvim',
    branch = 'nightly',
    opts = {
        -- see `:help vim.lsp.Config`
    },
  },
```
## [mini.deps](https://github.com/echasnovski/mini.deps)
```lua
  MiniDeps.add({
    source = "jvalue/jayvee.nvim",
    checkout = "nightly",
    monitor = "nightly",
  })

  require("jayvee").setup(
       -- see `:help vim.lsp.Config`
  )
```
