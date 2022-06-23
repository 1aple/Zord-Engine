--easy script configs
IntroTextSize = 35	--Size of the text for the Now Playing thing.
IntroSubTextSize = 30 --size of the text for the Song Name.
IntroTagColor = '8300c3'	--Color of the tag at the end of the box.
IntroTagWidth = 15	--Width of the box's tag thingy.
--easy script configs

--actual script
function onCreate()
	--the tag at the end of the box
	makeLuaSprite('JukeBoxTag', 'empty', 1305-IntroTagWidth, 15)
	makeGraphic('JukeBoxTag', 300+IntroTagWidth, 100, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)
	setProperty('JukeBoxTag.alpha', 0)

	--the box
	makeLuaSprite('JukeBox', 'empty', 1305-IntroTagWidth, 15)
	makeGraphic('JukeBox', 800, 100, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	setProperty('JukeBox.alpha', 0.6)
	
	--the text for the "Now Playing" bit
	makeLuaText('JukeBoxText', 'Now Playing: ' ..songName..'', 500, 1305-IntroTagWidth, 30)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	addLuaText('JukeBoxText')
	
	--text for the song name
	makeLuaText('JukeBoxSubText', songName, 300, 1305-IntroTagWidth, 60)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	addLuaText('JukeBoxSubText')
	setProperty('JukeBoxSubText.visible', false)
end

function onCreatePost()
    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('JukeBox.y', 157)
		setProperty('JukeBoxText.y', 177)
    elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
        setProperty('JukeBox.y', 470)
		setProperty('JukeBoxText.y', 490)
    end
end

--motion functions
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenX('MoveInOne', 'JukeBoxTag', 700, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 700, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 720, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 700, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 2, 5.5)
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', 1850, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', 1850, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', 1850, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', 1850, 1.5, 'CircInOut')
	end
end