function opponentNoteHit()
            health = getProperty('health')
       if getProperty('health') > 0.1 then
           setProperty('health', health- 0.02);
   end
end
function onUpdate()
	if getProperty('health') > 0.3 then
		doTweenAlpha('warrn', 'warrn', 0, 0.5, 'elasticInOut')
		runTimer('faders', 0.5)
	end
	if getProperty('health') < 0.3 then
		makeLuaSprite('warrn', 'RedVG', 0, 0);
		setLuaSpriteScrollFactor('warrn', 1, 1);
		setObjectCamera('warrn', 'hud');
		setObjectOrder('warrn', 999);
		addLuaSprite('warrn', false);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'faders' then
		removeLuaSprite('warrn', false);
	end
end
