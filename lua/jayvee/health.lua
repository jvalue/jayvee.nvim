local M = {}
function M.check()
	vim.health.start("jayvee.nvim")
	if vim.fn.executable("jayvee-language-server") == 1 then
		vim.health.ok("Found executable for `jayvee-lanugage-server`")
	else
		vim.health.warn("Could not find executable for `jayvee-language-server`", {
			"You may not have installed the jayvee-language server. The most convenient way to do so is via [mason.nvim](https://github.com/williamboman/mason.nvim).",
		})
	end
end
return M
