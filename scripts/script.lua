-- SCRIPT CONFIGS
local disableCountdownImages = true
local skipCountdown = true
local disableTimeBar = false
local hideSongName = false

function onCreatePost()
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	setProperty('botplayTxt.y', 516)
	elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		setProperty('botplayTxt.y', 496)
		setTextString('botplayTxt', 'HI GUYS IM REALLY BAD AT THE GAME!!')
	end
end
-- thanks to MYKETHAMIKE for the code lol
-- click 1/ONE to enable hitsounds, click 2/TWO to disable hitsounds.
function onUpdatePost()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ONE') then
		playSound('confirmMenu', 1);
		setPropertyFromClass('flixel.FlxG', 'save.data.enablehitsounds', true)
		debugPrint('hitSounds has been Enabled.')
	end
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.TWO') then
		playSound('confirmMenu', 1);
		setPropertyFromClass('flixel.FlxG', 'save.data.enablehitsounds', false)
		debugPrint('hitSounds has been Disabled.')
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	
    if not isSustainNote and getPropertyFromClass('flixel.FlxG', 'save.data.enablehitsounds') == true then
        playSound('ChartingTick', 0.8)
    end
end

function onUpdate(elapsed)
	doTweenColor('timeBar', 'timeBar', 'D50000', 0.1, 'linear');
	doTweenColor('timeTxt', 'timeTxt', 'A8A8A8', 0.1, 'linear');
	doTweenColor('message', 'message', '4a4a4a', 0.1, 'linear');
	doTweenColor('message2', 'message2', '4a4a4a', 0.1, 'linear');
	doTweenColor('songText', 'songText', 'e6e6e6', 0.1, 'linear');
end

function noteMiss()
    cameraShake("camHUD", 0.032, 0.2)
end

--easy script configs
IntroTextSize = 26	--Size of the text for the Now Playing thing.
IntroSubTextSize = 30 --size of the text for the Song Name.
IntroTagColor = '99e9ff'	--Color of the tag at the end of the box.
IntroTagWidth = 15	--Width of the box's tag thingy.
--easy script configs

--actual script
function onCreate()
	--the tag at the end of the box
	makeLuaSprite('JukeBoxTag', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBoxTag', 300+IntroTagWidth, 100, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)

	--the box
	makeLuaSprite('JukeBox', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBox', 300, 100, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	
	--the text for the "Now Playing" bit
	makeLuaText('JukeBoxText', 'Now Playing: ' .. songName .. '', 300, -305-IntroTagWidth, 30)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	addLuaText('JukeBoxText')
	
	--text for the song name
	makeLuaText('JukeBoxSubText', nogames, 300, -305-IntroTagWidth, 60)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	addLuaText('JukeBoxSubText')
end

--motion functions
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'CircInOut')
	end
end