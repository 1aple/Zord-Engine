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
    if getPropertyFromClass('flixel.FlxG', 'save.data.hide') == false then
        setProperty('aple.visible', true)
        setProperty('thanks.visible', true)
        setProperty('songText.visible', true)
        setProperty('message.visible', true)
        setProperty('message2.visible', true)
        setProperty('timeTxt.visible', true)
        setProperty('zordengine.visible', true)
    end
    if getPropertyFromClass('flixel.FlxG', 'save.data.hideHUD') == true then
        setProperty('camHUD.visible', false)
    end
    if getPropertyFromClass('flixel.FlxG', 'save.data.hideHUD') == false then
        setProperty('camHUD.visible', true)
    end
    if getPropertyFromClass('flixel.FlxG', 'save.data.Judgement') == true then
        setProperty('note hits.visible', false)
        setProperty('combo.visible', false)
        setProperty('sicks.visible', false)
        setProperty('goods.visible', false)
        setProperty('bads.visible', false)
        setProperty('shits.visible', false)
        setProperty('misses.visible', false)
    end
    if getPropertyFromClass('flixel.FlxG', 'save.data.Judgement') == false then
        setProperty('note hits.visible', true)
        setProperty('combo.visible', true)
        setProperty('sicks.visible', true)
        setProperty('goods.visible', true)
        setProperty('bads.visible', true)
        setProperty('shits.visible', true)
        setProperty('misses.visible', true)
    end
end

-- also uhh, tell me or somethin if this code is useful or not.