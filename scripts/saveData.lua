-- hide HUD and watermark
function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'save.data.hide') == true then
        setProperty('aple.visible', false)
        setProperty('thanks.visible', false)
        setProperty('songText.visible', false)
        setProperty('message.visible', false)
        setProperty('message2.visible', false)
        setProperty('timeTxt.visible', false)
        setProperty('zordengine.visible', false)
    end
    if getPropertyFromClass('flixel.FlxG', 'save.data.hideHUD') == true then
        setProperty('camHUD.visible', false)
    end
end