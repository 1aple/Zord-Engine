function onCreatePost()
    makeLuaText('wm', "Zord Engine v1.6.0", 200, 10, 690);
    addLuaText('wm');
    setTextAlignment('wm', 'left');
    setTextSize('wm', 16);
    setTextBorder('wm', 2, '000000');

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('wm.y', 10)
    elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		setProperty('wm.y', 690)
    end
end