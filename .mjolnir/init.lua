-- Used to show alerts on screen: alert.show(str, seconds = 2)
local alert = require "mjolnir.alert"

-- Manipulates running applications.
local application = require "mjolnir.application"

-- Functional programming utilities
local fnutils = require "mjolnir.fnutils"

-- Move / Resize your windows along a virtual and horizontal grid
local grid = require "mjolnir.bg.grid"

-- Create and manage global hotkeys
local hotkey = require "mjolnir.hotkey"

-- Manipulate screens (i.e. monitors)
local screen = require "mjolnir.screen"

-- Functions for managing any window
local window = require "mjolnir.window"

-- WINDOW MANAGEMENT
grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDWIDTH = 6
grid.GRIDHEIGHT = 6

-- a helper function that returns another function that resizes the current window
-- to a certain grid size.
local gridset = function(x, y, w, h)
    return function()
        cur_window = window.focusedwindow()
        grid.set(
            cur_window,
            {x=x, y=y, w=w, h=h},
            cur_window:screen()
        )
    end
end

local leader = {"ctrl", "alt"}
-- leader + return == Fullscreen Window
hotkey.bind(leader, "return", grid.maximize_window)

-- leader + h == Left half
hotkey.bind(leader, "j", gridset(0, 0, 3, 6))

-- leader + l == right half
hotkey.bind(leader, "l", gridset(3, 0, 3, 6))

-- leader + j == bottom half
hotkey.bind(leader, "k", gridset(0, 3, 6, 3))

-- leader + k == top half
hotkey.bind(leader, 'i', gridset(0, 0, 6, 3))