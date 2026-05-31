return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',

    config = function()
	local configure = require("nvim-treesitter")
	local configs   = require("config.treesitter")

	configure.setup()
	configure.install(configs.install)
	vim.api.nvim_create_autocmd('FileType', {
	  pattern = configs.install,
	  callback = function() vim.treesitter.start() end,
	})
    end

}
