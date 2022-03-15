-- i forgot who made the code forgive me.
function onCreate()
	makeLuaSprite('ready', 'ready', 0, 0)
	makeLuaSprite('readyCL', 'readyCL', 0, 0)
	scaleObject('ready', 0.6, 0.6)
	scaleObject('readyCL', 0.6, 0.6)
	screenCenter('ready', 'xy')
	screenCenter('readyCL', 'xy')
	addLuaSprite('ready', true)
	addLuaSprite('readyCL', true)
	setObjectCamera('ready', 'hud')
	setObjectCamera('readyCL', 'hud')
	setProperty('readyCL.visible', false)
	doTweenX('RXS0', 'ready.scale', 0.65, 0.5, 'quadInOut')
	doTweenY('RYS0', 'ready.scale', 0.65, 0.5, 'quadInOut')
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown then
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
		setProperty('boyfriend.stunned', true)
		return Function_Stop
	end
	return Function_Continue
end

local pause = false
local esc = false
function onSongStart()
	pause = true
	setProperty('boyfriend.stunned', false)
end

local MR = false
function onUpdate(elapsed)
	setProperty('readyCL.scale.x', getProperty('ready.scale.x') + 0.1)
	setProperty('readyCL.scale.y', getProperty('ready.scale.y') + 0.1)
	if not allowCountdown and (keyReleased('space') or getPropertyFromClass('flixel.FlxG', 'keys.justReleased.ENTER')) or (mouseReleased() and MR) and not startedCountdown then
		allowCountdown = true
		startCountdown()
		playSound('clickText')
		removeLuaSprite('ready', true)
		removeLuaSprite('readyCL', true)
		setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
	end
	if getPropertyFromClass('flixel.FlxG', 'keys.justReleased.ESCAPE') and not esc and pause then
		esc = true
		pause = false
		endSong()
	end
	if getPropertyFromClass('flixel.FlxG', 'keys.justReleased.ESCAPE') and esc then
		pause = false
		endSong()
	end
	if getMouseX('hud') > getProperty('ready.x') and getMouseY('hud') > getProperty('ready.y') and getMouseX('hud') < getProperty('ready.x') + getProperty('ready.width') and getMouseY('hud') < getProperty('ready.y') + getProperty('ready.height') then
		setProperty('ready.visible', false)
		setProperty('readyCL.visible', true)
		setProperty('timeBarBG.visible', false)
		setProperty('timeBar.visible', false)
		MR = true
	else
		setProperty('ready.visible', true)
		setProperty('readyCL.visible', false)
		setProperty('timeBarBG.visible', false)
		setProperty('timeBar.visible', false)
		MR = false
	end
end

function onTweenCompleted(t)
	if t == 'RXS0' then
		doTweenX('RXS2', 'ready.scale', 0.6, 0.5, 'quadInOut')
		doTweenY('RYS2', 'ready.scale', 0.6, 0.5, 'quadInOut')
	elseif t == 'RXS2' then
		doTweenX('RXS0', 'ready.scale', 0.65, 0.5, 'quadInOut')
		doTweenY('RYS0', 'ready.scale', 0.65, 0.5, 'quadInOut')
	end
end

function onPause()
	if not pause then
		return Function_Stop
	end
	if esc then
		endSong()
	end
	return Function_Continue
end


