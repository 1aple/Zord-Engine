function onCreate()
	makeLuaText('healthcounter','HP:' .. math.floor(getProperty('health') * 500 / 10) .. '%',0,940,634)
	setTextSize('healthcounter', 23)
	addLuaText('healthcounter')
end

function onUpdate()
	setTextString('healthcounter','HP:' .. math.floor(getProperty('health') * 500 / 10) .. '%')
end

function onCreatePost()
    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('healthcounter.y', 634)
    elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
        setProperty('healthcounter.y', 75)
    end
end