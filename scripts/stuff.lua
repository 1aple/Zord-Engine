-- these scripts are from saraHUD

function onCreatePost()

    makeLuaText('timer', '', 670, 100, 26)
    setObjectCamera('timer', 'hud')
    setTextAlignment('timer', 'right')
    setTextSize('timer', 20)
    addLuaText('timer')
    
    makeLuaText('rating', 'Rating: ? - ???')
    makeLuaText('misses', 'Misses: 0')
    makeLuaText('score', 'Score: 0')

    setTextAlignment('rating', 'left')
    setTextAlignment('misses', 'left')
    setTextAlignment('score', 'left')

    setTextSize('rating', 20)
    setTextSize('misses', 20)
    setTextSize('score', 20)

    addLuaText('rating')
    addLuaText('misses')
    addLuaText('score')

    makeLuaText('accuracy', 'Accuracy: ???', 720, 70, 48)
    setObjectCamera('accuracy', 'hud')
    setTextAlignment('accuracy', 'left')
    setTextSize('accuracy', 20)
    addLuaText('accuracy')

    makeLuaText('practice', "Practice Mode", 600, 1100, 35);
    addLuaText('practice');
    setTextAlignment('practice', 'left');
    setTextSize('practice', 20);
    setTextFont('practice','comic.ttf')
    setTextBorder('practice', 2, '000000');
    setProperty('practice.visible', false)

    -- y x thingy
    setProperty('rating.y', 86)
    setProperty('rating.x', 10)
    setProperty('misses.y', 66)
    setProperty('misses.x', 10)
    setProperty('score.y', 46)
    setProperty('score.x', 10)
    setProperty('accuracy.y', 106)
    setProperty('accuracy.x', 10)

    setProperty('healthBar.y', 690)
    setProperty('healthBar.x', 10)

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('healthBar.y', 10)
        setProperty('timer.y', 690)
        setProperty('rating.y', 668) -- rating
        setProperty('misses.y', 648) -- misses
        setProperty('score.y', 628) -- score
        setProperty('accuracy.y', 688) -- accuracy
        setProperty('botplayTxt.y', 650)
        setProperty('iconP1.y', 468)
        setProperty('iconP2.y', 468)
        setProperty('practice.y', 660)
    elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		setProperty('healthBar.y', 690)
        setProperty('timer.y', 48)
        setProperty('rating.y', 56) -- rating
        setProperty('misses.y', 36) -- misses
        setProperty('score.y', 16) -- score
        setProperty('accuracy.y', 76) -- accuracy
        setProperty('botplayTxt.y', 10)
        setProperty('iconP1.y', 120)
        setProperty('iconP2.y', 120)
        setProperty('practice.y', 35)
    end
end

function onUpdatePost()
    local  timeElapsed = math.floor(getProperty('songTime')/1000)
    local  timeTotal = math.floor(getProperty('songLength')/1000)
    local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
    local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)
    setTextString('timer', '( '.. songName .. ' - ' .. timeElapsedFixed .. '/' .. timeTotalFixed .. ' )')
    setTextString('botplayTxt', '[BotPlay]')

    setProperty('timeTxt.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('scoreTxt.visible', false)

    setProperty('iconP1.x', 120)
    setProperty('iconP2.x', 5)

    if getProperty('practiceMode') then
        setProperty('score.visible', false)
        setProperty('rating.visible', false)
        setProperty('accuracy.visible', false)
        setProperty('practice.visible', true)
    end
end

function onRecalculateRating()
    setTextString('misses', 'Misses: ' .. getProperty('songMisses'));
    setTextString('rating', 'Rating: ' .. getProperty('ratingName') .. ' - ' .. getProperty('ratingFC'));
    setTextString('accuracy', 'Accuracy: '  .. string.format("%.2f%%", rating * 100));
    setTextString('score', 'Score: ' .. score);
end

-- made the arrow spin when the song starts (yeah i used the script from 1.5 or 1.4 dont remember)
function onSongStart()
    noteTweenAngle('playrotate0', 4, 360, 1, 'quartInOut')
    noteTweenAngle('playrotate1', 5, 360, 1, 'quartInOut')
    noteTweenAngle('playrotate2', 6, 360, 1, 'quartInOut')
    noteTweenAngle('playrotate3', 7, 360, 1, 'quartInOut')
    noteTweenAngle('opporotate0', 0, 360, 1, 'quartInOut')
    noteTweenAngle('opporotate1', 1, 360, 1, 'quartInOut')
    noteTweenAngle('opporotate2', 2, 360, 1, 'quartInOut')
    noteTweenAngle('opporotate3', 3, 360, 1, 'quartInOut')
end