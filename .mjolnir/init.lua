local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local alert = require "mjolnir.alert"

hotkey.bind({"cmd", "alt", "ctrl"}, "D", function()
	local win = window.focusedwindow()
	local f = win:frame()
	f.x = f.x + 10
	win:setframe(f)
end)

