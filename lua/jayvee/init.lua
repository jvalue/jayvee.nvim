local M = {}
M.setup = function(opts)
	require("lspconfig.configs").jayvee_ls = {
		default_config = {
			cmd = { "jayvee-language-server", "--stdio" },
			filetypes = { "jayvee" },
			single_file_support = true,
		},
	}
	require("lspconfig").jayvee_ls.setup({ opts })
end

return M
