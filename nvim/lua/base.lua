--Import
require("options")
require("plugins")
require("commands")
require("highlights")
require("keymaps")
--Clipboard for all environments
local has = vim.fn.has
local is_mac = has"macunix"
local is_win = has"win32"
local is_wsl = has"wsl"

if is_mac then
	require("macos")
end
if is_win then
	require("window")
end
if is_wsl then
	require("wsl")
end