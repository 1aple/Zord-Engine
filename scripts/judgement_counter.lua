function onCreatePost()
	makeLuaText('note hits', 'Note hits:' ..hits.. '', 200, 20, 255);
	makeLuaText('combo', 'Combos:' .. getProperty('combo'), 200, 20, 275);
	makeLuaText('sicks', 'Sicks:' .. getProperty('sicks'), 200, 20, 295);
	makeLuaText('goods', 'Goods:' .. getProperty('goods'), 200, 20, 315);
	makeLuaText('bads', 'Bads:' .. getProperty('bads'), 200, 20, 335);
	makeLuaText('shits', 'Shits:' .. getProperty('shits'), 200, 20, 355);
	makeLuaText('misses', 'Misses:' ..misses.. '', 200, 20, 30);
	makeLuaText('scoretext', 'Scores:' ..score.. '', 200, 20, 10);
	setTextSize('note hits', 18)
	setTextSize('combo', 18)
	setTextSize('sicks', 18)
	setTextSize('goods', 18)
	setTextSize('bads', 18)
	setTextSize('shits', 18)
	setTextSize('misses', 20)
	setTextSize('scoretext', 20)
	setTextAlignment('note hits', 'left')
	setTextAlignment('combo', 'left')
	setTextAlignment('sicks', 'left')
	setTextAlignment('goods', 'left')
	setTextAlignment('bads', 'left')
	setTextAlignment('shits', 'left')
	setTextAlignment('misses', 'left')
	setTextAlignment('scoretext', 'left')
	addLuaText('note hits');
	addLuaText('combo');
	addLuaText('sicks');
	addLuaText('goods');
	addLuaText('bads');
	addLuaText('shits');
	addLuaText('misses');
	addLuaText('scoretext');

	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('scoretext.y', 670)
		setProperty('misses.y', 690)
    elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
        setProperty('scoretext.y', 10)
		setProperty('misses.y', 30)
    end
end

function onRecalculateRating()
	setTextString('note hits', 'Note hits:' ..hits.. '')
	setTextString('combo', 'Combos:' .. getProperty('combo'));
	setTextString('sicks', 'Sicks:' .. getProperty('sicks'));
	setTextString('goods', 'Goods:' .. getProperty('goods'));
	setTextString('bads', 'Bads:' .. getProperty('bads'));
	setTextString('shits', 'Shits:' .. getProperty('shits'));
	setTextString('misses', 'Misses:' ..misses.. '')
	setTextString('scoretext', 'Scores:' ..score..'')
end

function onUpdate()
	setProperty('scoretext.visible', false)
	setProperty('misses.visible', false)
end