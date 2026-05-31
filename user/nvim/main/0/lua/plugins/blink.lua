return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "default",
			-- Nav
			["<C-n>"] = { "select_next" },
			["<C-p>"] = { "select_prev", "fallback" },
			-- Show
			["<C-Space>"] = { "show" }, -- This is equivalent as above
			-- Select
			["<Tab>"] = { "select_and_accept", "fallback" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = { auto_show = false },
			menu = {
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", gap = 0 },
						{ "kind" },
						{ "source_name" },
					},
					components = {
						kind_icon = {
							text = function(ctx)
								return require("lspkind").symbol_map[ctx.kind] or ""
							end,
						},
					},
				},
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
