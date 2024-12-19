local M = {}
---Set up and enable the jayvee lanugage server
---@param opts vim.lsp.Config Custom configuration options
function M.setup(opts)
	vim.lsp.config.jayvee_ls = vim.tbl_deep_extend("keep", opts, {
		cmd = { "jayvee-language-server", "--stdio" },
		root_markers = { ".git" },
		filetypes = { "jayvee" },
	})
	vim.lsp.enable("jayvee_ls")
end

return M
