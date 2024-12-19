local M = {}
---Set up and enable the jayvee lanugage server
---@param opts vim.lsp.Config Custom configuration options
function M.setup(opts)
	require("lspconfig.configs").jayvee_ls = {
		default_config = {
			cmd = { "jayvee-language-server", "--stdio" },
			filetypes = { "jayvee" },
			single_file_support = true,
			root_dir = function(startpath)
				vim.fs.dirname(vim.fs.find(".git", { path = startpath, upward = true })[1])
			end,
		},
	}
	require("lspconfig").jayvee_ls.setup(opts)
end

return M
