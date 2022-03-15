local font = "vcr.ttf";

function onCreatePost()
    makeLuaText('message', "Psych Engine 0.5.2h", 0, 3, 679);
    addLuaText('message');
    setTextAlignment('message', 'left');
    setTextSize('message', 17);
    setTextBorder('message', 2, '000000');
end

local font = "vcr.ttf";

function onCreate()
    makeLuaText('message2', "Friday Night Funkin' v0.2.7", 0, 3, 696);
    addLuaText('message2');
    setTextAlignment('message2', 'left');
    setTextSize('message2', 17);
    setTextBorder('message', 2, '000000');
end

-- made the arrow spin when the song starts
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

-- made the arrow spin when the song ends
function onEndSong()
    noteTweenAngle('playrotate0', 4, -360, 1, 'quartInOut')
    noteTweenAngle('playrotate1', 5, -360, 1, 'quartInOut')
    noteTweenAngle('playrotate2', 6, -360, 1, 'quartInOut')
    noteTweenAngle('playrotate3', 7, -360, 1, 'quartInOut')
    noteTweenAngle('opporotate0', 0, -360, 1, 'quartInOut')
    noteTweenAngle('opporotate1', 1, -360, 1, 'quartInOut')
    noteTweenAngle('opporotate2', 2, -360, 1, 'quartInOut')
    noteTweenAngle('opporotate3', 3, -360, 1, 'quartInOut')
end

function onUpdatePost()
    if middlescroll and not inGameOver then
        setPropertyFromGroup('opponentStrums',0,'alpha',0)
        setPropertyFromGroup('opponentStrums',1,'alpha',0)
        setPropertyFromGroup('opponentStrums',2,'alpha',0)
        setPropertyFromGroup('opponentStrums',3,'alpha',0)
    end
end

