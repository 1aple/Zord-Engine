function onCreatePost()
	makeLuaText('note hits', 'Note hits:' ..hits.. '', 200, 30, 235);
	makeLuaText('combo', 'Combos:' .. getProperty('combo'), 200, 30, 255);
	makeLuaText('sicks', 'Sicks:' .. getProperty('sicks'), 200, 30, 275);
	makeLuaText('goods', 'Goods:' .. getProperty('goods'), 200, 30, 295);
	makeLuaText('bads', 'Bads:' .. getProperty('bads'), 200, 30, 315);
	makeLuaText('shits', 'Shits:' .. getProperty('shits'), 200, 30, 335);
	makeLuaText('misses', 'Misses:' ..misses.. '', 200, 30, 355);
	setTextSize('note hits', 18)
	setTextSize('combo', 18)
	setTextSize('sicks', 18)
	setTextSize('goods', 18)
	setTextSize('bads', 18)
	setTextSize('shits', 18)
	setTextSize('misses', 18)
	setTextAlignment('note hits', 'left')
	setTextAlignment('combo', 'left')
	setTextAlignment('sicks', 'left')
	setTextAlignment('goods', 'left')
	setTextAlignment('bads', 'left')
	setTextAlignment('shits', 'left')
	setTextAlignment('misses', 'left')
	addLuaText('note hits');
	addLuaText('combo');
	addLuaText('sicks');
	addLuaText('goods');
	addLuaText('bads');
	addLuaText('shits');
	addLuaText('misses');
end

function onRecalculateRating()
	setTextString('note hits', 'Note hits:' ..hits.. '')
	setTextString('combo', 'Combos:' .. getProperty('combo'));
	setTextString('sicks', 'Sicks:' .. getProperty('sicks'));
	setTextString('goods', 'Goods:' .. getProperty('goods'));
	setTextString('bads', 'Bads:' .. getProperty('bads'));
	setTextString('shits', 'Shits:' .. getProperty('shits'));
	setTextString('misses', 'Misses:' ..misses.. '')
end