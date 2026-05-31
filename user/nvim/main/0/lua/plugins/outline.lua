return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  opts = {},
  config = function ()
    require("outline").setup({
      outline_window = {
	-- position="left"
      }
    })
  end
}
