local font = "vcr.ttf";

function onCreatePost()
    makeLuaText('aple', "Nogames Mod/Port by ApleFromIRL.", 0, 960, 696);
    addLuaText('aple');
    setTextAlignment('aple', 'right');
    setTextSize('aple', 17);
    setTextBorder('aple', 2, '000000');
end

local font = "vcr.ttf";

function onCreate()
    makeLuaText('thanks', "Vs. /v/-tan by The Anonymous.", 0, 990, 679);
    addLuaText('thanks');
    setTextAlignment('thanks', 'right');
    setTextSize('thanks', 17);
    setTextBorder('thanks', 2, '000000');
end

function onEndSong()
    setProperty('camHUD.visible', false)
end

function onUpdatePost(elapsed)
    setPropertyFromClass("openfl.Lib", "application.window.title", 'Nogames: Zord Engine v0.1.4')
end