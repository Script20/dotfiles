return {
	"nvim-telescope/telescope.nvim",
	config = function()
		local builtin = require('telescope.builtin')

        local wk = require("which-key")
        wk.add({
            { "<leader>ff", builtin.find_files, desc = "Find Files", mode = "n" },
            { "<leader>gf", builtin.git_files, desc = "Git Files", mode = "n" },
            { "<leader>fs", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, desc = "Grep Search", mode = "n" },
            { "<leader>vh", builtin.help_tags, desc = "help Tags", mode = "n" },
        })
	end,
}
