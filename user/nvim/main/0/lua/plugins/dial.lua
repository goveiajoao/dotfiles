return {
  "monaqa/dial.nvim",
  config = function ()
    local augend = require("dial.augend")
    require("dial.config").augends:register_group{
      default = {
	augend.integer.alias.decimal_int,
	augend.integer.alias.hex,
	augend.integer.alias.octal,
	augend.integer.alias.binary,
	augend.constant.alias.bool,
	augend.constant.alias.Bool,
	augend.semver.alias.semver
      },
    }
  end
}
