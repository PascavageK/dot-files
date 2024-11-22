return {
	'nvim-telescope/telescope.nvim', tag = '0.1.3',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		--vim.keymap.set('n', '<leader>pfw', function()
		--	builtin.grep_string({ search = vim.fn.input("Grep > ") })
		--end)
        vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
	end,

    require('telescope').setup {
        defaults = {
            file_ignore_patterns = {
                "yay",
                "/bumblebee",
                ".class",
                ".jpg",
                ".png",
                ".webg"
            }
        }
    }
}
