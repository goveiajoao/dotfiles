-- Setting Path to Search on NvimLuaConfig
package.path = package.path .. ';' .. os.getenv("HOME") .. "/.config/nvim/lua/config/?.lua"

-- Loading Nvim
require("config.lazy")

-- Loading Options
require("config.options")
