local defaultNotePos = {}
dwindowX = 125
dwindowY = 60
function onSongStart()
    for i = 0, 7 do -- basicly gets the Default Positions
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000
        for i = 0, 7 do
        noteTweenX(i, i, math.cos((songPos)*2)*(-i+1)*-10 + math.sin((songPos)*2)*(i+1)*-5 + defaultNotePos[i][1] , 0.001, 'circInOut')  
    end
    windowX = math.sin((songPos)*4)*(40) + dwindowX
    windowY = math.sin((songPos)*8)*(20) + dwindowY
    setPropertyFromClass("openfl.Lib", "application.window.x", windowX)
    setPropertyFromClass("openfl.Lib", "application.window.y", windowY)
    setPropertyFromClass("openfl.Lib", "application.window.width", 1280) -- nice try maximize option
    setPropertyFromClass("openfl.Lib", "application.window.height", 720)
end

function onCreatePost()
    precacheImage('hitStatic')
    precacheSound('hitStatic1')
    precacheSound('hitStatic2')
    setProperty('gf.alpha',0)
    setProperty('dad.alpha',0)
    setProperty('iconP2.alpha',0)
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.02); --HP DRAIN AMOUNT.
    end
end