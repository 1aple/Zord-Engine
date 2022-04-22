--CREDIT TO 1F1D ON GAMEBANANA FOR MAKING THIS SCRIPT
--CREDIT TO Tomek*Tomciok*Przybysz ON GAMEBANANA FOR FIXING THE SCRIPT
function onCreatePost()

    makeLuaText("nametext", songName, 0, 600, 19.5)
    setTextSize('nametext', 18)
    addLuaText("nametext")
    setTextAlignment('nametext', 'left')

    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', false)

end

function onCreate()

    makeLuaSprite('black', 'black', 297.5, 20)
    makeLuaSprite('gray', 'gray', 303, 25.25)
    makeLuaSprite('green', 'green', 303, 25.25)

    addLuaSprite('black', true)
    addLuaSprite('gray', true)
    addLuaSprite('green', true)

    setObjectCamera('black', 'hud')
    setObjectCamera('gray', 'hud')
    setObjectCamera('green', 'hud')

    scaleObject('black', 2, .065)
    scaleObject('gray', 1.965, .035)
    scaleObject('green', 1.965, .035)

end

function onUpdate()
    scaleObject('green', 1.965 * getProperty("songPercent"), .035)

    setTextString('nametext', ''..songName..' - '..currentDifficulty..'')

    if downscroll then -- downscroll only
        setProperty('black.y', 685)
        setProperty('gray.y', 690)
        setProperty('green.y', 690)
        setProperty('nametext.y', 685)
    end
end
