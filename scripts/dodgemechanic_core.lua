--Code by doctor krazy, credit me if used.
--You may modify it to suit your needs.
-- this code is not even used in this mod, idk why i havent deleted it yet

damage = 0.5
generalvolume = 0.5
canDodge = false
dodged = false
instakill = false

function onEvent(name, v1, v2)
	if name == 'DodgeMechanic' then
		beat0 = curBeat+1
		beat1 = curBeat+2
		beat2 = curBeat+3

		if v1 == 'true' then
			instakill = true
		end
	end
end

function onCreate()
	makeAnimatedLuaSprite('kill', 'attackv6', -2200, 400)
	addAnimationByPrefix('kill', 'prepare', 'kb_attack_animation_prepare', 24, false)
	addAnimationByPrefix('kill', 'fire', 'kb_attack_animation_fire', 24, false)
	setObjectCamera('kill', 'camHUD')
	addLuaSprite('kill', true)
	setProperty('kill.alpha', 0)
	
	makeAnimatedLuaSprite('warning', 'attack_alert_NEW', 375, 100)
	addAnimationByPrefix('warning', 'alert', 'kb_attack_animation_alert-single', 24, false)
	scaleObject('warning', 2, 2)
	updateHitbox('warning')
	setObjectCamera('warning', 'camHUD')
	addLuaSprite('warning', true)
	setProperty('warning.alpha', 0)
end

function onUpdatePost(elapsed)
	if keyJustPressed('space') and canDodge and not dodged then
		dodged = true
		runTimer('Dodging', 1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	dodged = false
end

doWarning = function()
	playSound('alert', generalvolume)
	setProperty('warning.alpha', 1)
	objectPlayAnimation('warning', 'alert', true);
	setProperty('kill.alpha', 1)
end
doWarning2 = function()
	playSound('alert', generalvolume)	
	setProperty('warning.alpha', 1)
	objectPlayAnimation('warning', 'alert', true);
	canDodge = true
end
doDodge = function()
	playSound('attack', generalvolume)	
	objectPlayAnimation('kill', 'fire', true);
	if not dodged then
		if instakill then
			setProperty('health', -1)
		else
			setProperty('health', getProperty('health') - damage)
			characterPlayAnim('boyfriend', 'hurt', true)
			setProperty('boyfriend.specialAnim', true)
		end
	elseif dodged then
		characterPlayAnim('boyfriend', 'dodge', true)
		setProperty('boyfriend.specialAnim', true)
	end
	canDodge = false
end

function onBeatHit()
	if beat0 == curBeat then
		doWarning()
	end
	if beat1 == curBeat then
		doWarning2()
	end
	if beat2 == curBeat then
		doDodge()
	end
end