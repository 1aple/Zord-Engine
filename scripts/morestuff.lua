-- Click Shift to hide watermarks and timeBar, Click Backspace to make watermarks and timeBar visible. (Updated)
-- Press 3/Three on your keyboard to hide camera HUD, Press 4/Four on your keyboard to make the camera HUD visible.
function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') then
        setProperty('aple.visible', false)
        setProperty('thanks.visible', false)
        setProperty('songText.visible', false)
        setProperty('message.visible', false)
        setProperty('message2.visible', false)
        setProperty('timeTxt.visible', false)
        setProperty('zordengine.visible', false)
        setPropertyFromClass('flixel.FlxG', 'save.data.hide', true)
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.BACKSPACE') then
        setProperty('aple.visible', true)
        setProperty('thanks.visible', true)
        setProperty('songText.visible', true)
        setProperty('message.visible', true)
        setProperty('message2.visible', true)
        setProperty('timeTxt.visible', true)
        setProperty('zordengine.visible', true)
        setPropertyFromClass('flixel.FlxG', 'save.data.hide', false)
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.THREE') then
        setProperty('camHUD.visible', false)
        setPropertyFromClass('flixel.FlxG', 'save.data.hideHUD', true)
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.FOUR') then
        setProperty('camHUD.visible', true)
        setPropertyFromClass('flixel.FlxG', 'save.data.hideHUD', false)
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.NINE') then -- Press 9 on your keyboard for info's
        debugPrint('Click Shift to hide watermarks and timeBar')
        debugPrint('Click Backspace to make watermarks and timeBar visible')
        debugPrint('Press 3 on your keyboard to hide the camera HUD')
        debugPrint('Press 4 on your keyboard to make the camera HUD visible')
        debugPrint('Press 1 on your keyboard to enable hitSounds')
        debugPrint('Press 2 on your keyboard to disable hitSounds')
    end
end

function onSongStart()
    debugPrint('Press 9 on your keyboard for info')
end