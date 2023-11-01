local config = {
	defaults = {
		version = "dark",
	},
}

setmetatable(config, { __index = config.defaults })

return config
