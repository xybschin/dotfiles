local wezterm = require("wezterm")
local module = {}

local function is_unix()
	return package.config:sub(1, 1) == "/"
end

function module.apply_platform_settings(config)
	-- set settings only when on windows
	if not is_unix() then
		config.default_prog = { "powershell.exe", "-NoLogo" }
		local default_domains = wezterm.default_wsl_domains()
		if #default_domains > 0 then
			config.default_domain = default_domains[1].name
		end
	end
end

return module
