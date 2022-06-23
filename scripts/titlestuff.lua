songended = false

function onUpdatePost()
    if songended == false then
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Zord Engine | '..'Song: '..getProperty('curSong')..' | '..getProperty('scoreTxt.text'))
    end

    if botPlay == true then
        setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Zord Engine | Botplay')
    end
end
function onDestroy()
    songended = true
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Zord Engine | By ApleFromIRL')
end

function onGameOver()
    songended = true
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Zord Engine | '..'Song: '..getProperty('curSong')..' | GAMEOVER')
    return Function_Continue
end