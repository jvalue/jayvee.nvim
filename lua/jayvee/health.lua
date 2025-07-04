local M = {}
function M.check()
	vim.health.start("jayvee.nvim")
	local lsp_config = vim.lsp.config["jayvee_ls"]
	if not lsp_config then
		vim.health.error(
			"No configuration found for `jayvee-language-server`",
			"This plugin already includes configuration for the language server"
		)
		return
	end
	local cmd = lsp_config.cmd
	local name = lsp_config.name or "jayvee-language-server"

	if not cmd then
		vim.health.error(
			("%s's configuration did not contain a `cmd` field"):format(name),
			"The default configuration contains this field"
		)
		return
	end

	if type(cmd) == "function" then
		return
	end

	if vim.fn.executable(cmd[1]) == 1 then
		vim.health.ok(("Found executable for `%s`"):format(name))
	else
		vim.health.warn(("Could not find executable for `%s`"):format(name), {
			("You may not have `%s` installed. The most convenient way to do so is via [mason.nvim](https://github.com/williamboman/mason.nvim)."):format(
				name
			),
		})
	end
end
return M
