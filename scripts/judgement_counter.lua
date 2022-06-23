function onCreatePost()
	makeLuaText('note hits', 'Note hits:' ..hits.. '', 200, 20, 275);
	makeLuaText('combo', 'Combos:' .. getProperty('combo'), 200, 20, 295);
	makeLuaText('sicks', 'Sicks:' .. getProperty('sicks'), 200, 20, 315);
	makeLuaText('goods', 'Goods:' .. getProperty('goods'), 200, 20, 335);
	makeLuaText('bads', 'Bads:' .. getProperty('bads'), 200, 20, 355);
	makeLuaText('shits', 'Shits:' .. getProperty('shits'), 200, 20, 375);
	setTextSize('note hits', 18)
	setTextSize('combo', 18)
	setTextSize('sicks', 18)
	setTextSize('goods', 18)
	setTextSize('bads', 18)
	setTextSize('shits', 18)
	setTextAlignment('note hits', 'left')
	setTextAlignment('combo', 'left')
	setTextAlignment('sicks', 'left')
	setTextAlignment('goods', 'left')
	setTextAlignment('bads', 'left')
	setTextAlignment('shits', 'left')
	addLuaText('note hits');
	addLuaText('combo');
	addLuaText('sicks');
	addLuaText('goods');
	addLuaText('bads');
	addLuaText('shits');
end

function onRecalculateRating()
	setTextString('note hits', 'Note hits:' ..hits.. '')
	setTextString('combo', 'Combos:' .. getProperty('combo'));
	setTextString('sicks', 'Sicks:' .. getProperty('sicks'));
	setTextString('goods', 'Goods:' .. getProperty('goods'));
	setTextString('bads', 'Bads:' .. getProperty('bads'));
	setTextString('shits', 'Shits:' .. getProperty('shits'));
end