return {
	{
	'neovim/nvim-lspconfig',
	dependencies = {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp',
		'saghen/blink.cmp'
	},
	opts = { diagnostics = { virtual_text = false } },
	config = function()
		require('mason').setup()
		require('mason-lspconfig').setup({
			ensure_installed = { 'lua_ls' }
		})
		local capabilities = require('blink.cmp').get_lsp_capabilities()

		-- LUA
		vim.lsp.config('lua_ls', {
			cmd = { 'lua-language-server', '--stdio' },
			filetypes = {'lua'},
			capabilities = capabilities,
			settings = {
				Lua = {
				    runtime = {
					version = 'LuaJIT',
				    },
				    diagnostics = {
					globals = { 'vim' },
				    },
				    workspace = {
					library =  vim.api.nvim_get_runtime_file("", true),
					checkThirdParty = false,
				    },
				    telemetry = {
					enable = false,
				    },
				},
			},
			single_file_support = true
		})
		-- QML
		vim.lsp.config('qmlls', {
			cmd = { 'qmlls', '-I', '/usr/lib64/qt6/qml'},
			filetypes = {'qml'},
			single_file_support = true
		})

		-- PYTHON
		vim.lsp.config('pyright', {
			cmd = { "pyright-langserver", "--stdio" },
			fyletypes = { "python" },
			capabilities = capabilities,
		})
		
		-- GO
		vim.lsp.config('gopls', {
			cmd = { "gopls"},
			fyletypes = { "go" },
			capabilities = capabilities,
		})

		-- BASH 
		vim.lsp.config('bash-language-server', {
			cmd = { "bash-language-server"},
			fyletypes = { "bash" },
			capabilities = capabilities,
		})

		-- JSON 
		vim.lsp.config('jsonls', {
			cmd = { "vscode-json-language-server", "--stdio"},
			fyletypes = { "json", "jsonc" },
			capabilities = capabilities,
		})
		-- JSON 
		vim.lsp.config('yaml-language-server', {
			cmd = { "yaml-language-server", "--stdio"},
			fyletypes = { "json", "jsonc" },
			capabilities = capabilities,
		})

		-- C 
		vim.lsp.config('clangd', {
			cmd = { "clangd"},
			fyletypes = {"c"},
			capabilities = capabilities,
		})
	end,
	}
}
