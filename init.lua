-- RIPPLE DELETE @ PLAYHEAD --
-- Unbind cmd shift D
-- Bind D playback head
-- Bind Shift D ripple delete playhead
hs.hotkey.bind({"cmd", "shift"}, "D", function()
    -- hs.alert.show("ripple delete at playhead")
    hs.application.launchOrFocus("Adobe Premiere Pro 2024")
    hs.eventtap.keyStroke({}, 'D', hs.application.frontmostApplication())
    hs.eventtap.keyStroke({'shift'}, 'D', hs.application.frontmostApplication())
end)

-- CHANGE VOLUME +3 DB @ PLAYHEAD --
-- Remap G to Shift G
hs.hotkey.bind({'shift', 'cmd'}, 'G', function()
    hs.application.launchOrFocus("Adobe Premiere Pro 2024")
    hs.eventtap.keyStroke({}, 'D', hs.application.frontmostApplication())
    hs.eventtap.keyStroke({'shift'}, 'G', hs.application.frontmostApplication())
    hs.eventtap.keyStroke({}, '3', hs.application.frontmostApplication())
    hs.eventtap.keyStroke({}, hs.keycodes.map['return'], hs.application.frontmostApplication())
end)

-- RELOAD HAMMERSPOON --
hs.hotkey.bind({'shift', 'cmd'}, 'R', function()
    hs.alert.show("reload")
    hs.reload()
end)
