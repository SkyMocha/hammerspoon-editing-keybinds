premiereProName = "Adobe Premiere Pro 2024"

function bindHotkeyOnlyTo(appname, modifier, key, message, callback, ...)
    hotkeyHandler = hs.hotkey.bind(modifier, key, message, function()

        local currentApp = hs.application.frontmostApplication():name()

        if (appname == currentApp) then
            callback()
        else
            hotkeyHandler:disable()
            hs.eventtap.keyStroke(modifier, key)
            hotkeyHandler:enable()
        end
    end)
end

-- RIPPLE DELETE @ PLAYHEAD --
-- Unbind cmd shift D
-- Bind D playback head
-- Bind Shift D ripple delete playhead
bindHotkeyOnlyTo(premiereProName, {"cmd", "shift"}, "D", nil, function()
    hs.eventtap.keyStroke({}, 'D', hs.application.frontmostApplication())
    hs.eventtap.keyStroke({'shift'}, 'D', hs.application.frontmostApplication())
end)

-- CHANGE VOLUME +3 DB @ PLAYHEAD --
-- Remap G to Shift G
bindHotkeyOnlyTo(premiereProName, {'shift', 'cmd'}, 'G', nil, function()
    hs.eventtap.keyStroke({}, 'D', hs.application.frontmostApplication())
    hs.eventtap.keyStroke({'shift'}, 'G', hs.application.frontmostApplication())
    hs.eventtap.keyStroke({}, '3', hs.application.frontmostApplication())
    hs.eventtap.keyStroke({}, hs.keycodes.map['return'], hs.application.frontmostApplication())
end)

-- RELOAD HAMMERSPOON --
hs.hotkey.bind({'shift', 'cmd'}, 'R', function()
    hs.reload()
end)
