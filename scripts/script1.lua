function onCreatePost()
    makeLuaText('wm', "Zord Engine v1.7.0", 600, 1095, 690);
    addLuaText('wm');
    setTextAlignment('wm', 'left');
    setTextSize('wm', 16);
    setTextFont('wm','comic.ttf')
    setTextBorder('wm', 2, '000000');

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('wm.y', 690)
    elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		setProperty('wm.y', 10)
    end
end