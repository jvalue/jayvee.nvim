# Jayvee.nvim
Features:
  - Associates the `.jv` extension with the `jayvee` filetype
  - Enables very basyic vim syntax highlighting for jayvee files
  - Configures the jayvee-language-server

## Requirements
- neovim >= 0.11

> [!IMPORTANT]
> In addition to this plugin, you also have to install the language server.
> The most convenient way for that is [mason.nvim](https://github.com/williamboman/mason.nvim).


## Installation & Usage

<details>

<summary>lazy.nvim</summary>

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    'jvalue/jayvee.nvim',
    config = function()
        -- See `:help lsp-config` if you require a custom configuration
        vim.lsp.enable("jayvee_ls")
    end
},
```

</details>

<details>

<summary>mini.deps</summary>

### [mini.deps](https://github.com/echasnovski/mini.deps)
```lua
MiniDeps.add("jvalue/jayvee.nvim")

-- See `:help lsp-config` if you require a custom configuration
vim.lsp.enable("jayvee_ls")
```

</details>

