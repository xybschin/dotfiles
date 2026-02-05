local wezterm = require("wezterm")
local module = {}

local function is_unix()
  return package.config:sub(1,1) == '/'
end

function module.apply_platform_settings(config)
  -- set settings only when on windows
  if not is_unix() then
    config.default_prog = { 'powershell.exe', '-NoLogo' }
    config.default_domain = 'WSL:FedoraLinux-43'
  end
end

return module
