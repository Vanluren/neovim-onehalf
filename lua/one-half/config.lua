local config = {
	defaults = {
		variant = "dark",
	},
}

setmetatable(config, { __index = config.defaults })

return config
