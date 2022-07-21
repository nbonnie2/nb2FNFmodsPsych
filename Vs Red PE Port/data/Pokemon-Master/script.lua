local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('CUTSCENE');
		allowCountdown = true;
		return Function_Stop;
	end
    return Function_Continue;
end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-pokemon-pixel'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'lowhp'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'pokecenter'); --put in mods/music/
	makeLuaSprite('hp', 'health', 700, 400);
	scaleObject('hp', 0.5, 0.5);
	setObjectCamera('hp', 'hud')
	addLuaSprite('hp', false);
end

function onUpdatePost(elapsed)
	setProperty('iconP1.x', 1000)
	setProperty('iconP2.x', 900)
	setProperty('healthBar.y', 500)
	setProperty('healthBar.x', 800)
	if inGameOver == false then
	setProperty('girlfriend.alpha', 0)
    	if not getPropertyFromClass('ClientPrefs', 'middleScroll') then
		    setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
	    	setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
	    	setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
	    	setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
	    end
    	for i = 0, 3 do
	    	setPropertyFromGroup('strumLineNotes', i, 'x', 10000)
      	end
    end
end
function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('pika2', 'idle');
		objectPlayAnimation('pika21', 'idle');
		objectPlayAnimation('char2', 'idle');
		objectPlayAnimation('char21', 'idle');
	end
end
