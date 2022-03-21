currentDifficulty = 'its still fucked';

function onCreate()
    makeLuaText('songText',"Zord Engine 0.1.5", 0, 3, 661);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 17);
    setTextBorder('songText', 2, '000000');
    addLuaText('songText');
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y') - 5);
    setProperty('timeTxt.y', getProperty('timeTxt.y') - 5);
end

function onUpdate(elapsed)
    currentDifficulty = getProperty('storyDifficultyText');
    setTextString('songText',"Zord Engine 0.1.5");
end