return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" }, -- Load when saving
	cmd = { "ConformInfo" }, -- Load when you type this command

	-- THIS IS THE MISSING PART:
	opts = {
		formatters_by_ft = {
			html = { "prettier" }, -- Use prettier for HTML
			css = { "prettier" }, -- Use prettier for CSS
			javascript = { "prettier" },
			go = { "gofmt" }, -- Since you are learning Go!
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},

	-- If you are not using a distro (like LazyVim), you might need this:
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
