return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").setup()
		end,
		opts = {
			ensure_installed = {
				"vimdoc", "java", "javascript", "cpp", "rust",
				"jsdoc", "c"
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "markdown" },
			},
			indent = { enable = true },
			sync_install = false,
			auto_install = true,
			enable = true,
			max_lines = 0,
			min_window_height = 0,
			line_numbers = true,
			multiline_threshold = 20,
			trim_scope = 'outer',
			mode = 'cursor',
			zindex = 20,
		}
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup()
		end,
	},
}
