local null_ls = require("null-ls")

null_ls.setup({
	sources = {

		-- Lua
		null_ls.builtins.formatting.stylua,

        -- JS / TS
        null_ls.builtins.formatting.biome,

	},

	vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format file" }),
})
