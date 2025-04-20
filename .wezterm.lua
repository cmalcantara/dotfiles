-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 17

config.enable_tab_bar = false

-- config.window_decorations = "RESIZE"
config.window_decorations = "RESIZE"

-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 10

config.enable_tab_bar = true

-- Force tab bar to stay visible even with one tab
config.hide_tab_bar_if_only_one_tab = true

config.colors = {
	tab_bar = {
		background = "rgba(0,0,0,0)",
	},
}
disable_default_key_bindings = true
enable_osc52_clipboard = true

config.keys = {
	-- Map Cmd+d to Page Down
	--{
	--  key = "d",
	--  mods = "CMD",
	--  action = wezterm.action.SendKey { key = "d", mods = "CTRL" },
	--},
	-- Map Cmd+u to Page Up
	--{
	--  key = "u",
	--  mods = "CMD",
	--  action = wezterm.action.SendKey { key = "u", mods = "CTRL" },
	--},

	-- Mapping Mac Cmd to Ctrl on Wezterm
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "d", mods = "CTRL" }),
	},
	{
		key = "u",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "u", mods = "CTRL" }),
	},
	{
		key = "r",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "r", mods = "CTRL" }),
	},
	{
		key = "b",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "b", mods = "CTRL" }),
	},
	{
		key = "u",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "u", mods = "CTRL" }),
	},
	{
		key = "1",
		mods = "CMD",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "2",
		mods = "CMD",
		action = wezterm.action.ActivateTabRelative(1),
	},
}

config.send_composed_key_when_left_alt_is_pressed = false

-- and finally, return the configuration to wezterm
return config
