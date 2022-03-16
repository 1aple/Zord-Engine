-- Click H to hide watermarks and timeBar, Click V to make watermarks and timeBar visible.
function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
        setProperty('aple.visible', false)
        setProperty('thanks.visible', false)
        setProperty('songText.visible', false)
        setProperty('message.visible', false)
        setProperty('message2.visible', false)
        setProperty('timeTxt.visible', false)
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.V') then
        setProperty('aple.visible', true)
        setProperty('thanks.visible', true)
        setProperty('songText.visible', true)
        setProperty('message.visible', true)
        setProperty('message2.visible', true)
        setProperty('timeTxt.visible', true)
    end
end