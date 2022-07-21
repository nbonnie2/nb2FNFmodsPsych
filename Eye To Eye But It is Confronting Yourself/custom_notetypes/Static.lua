function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'staticNotes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023') 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); 
		end
	end
end


function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Static' then
	removeLuaSprite('static', false)
    makeAnimatedLuaSprite('static', 'hitStatic', 0, 0)
	setObjectCamera('static', 'other')
	addAnimationByPrefix('static', '1', 'staticANIMATION0', 24, true)
	addLuaSprite('static', true)
	objectPlayAnimation('static', '1', true)
	playSound('hitStatic1', 0.5)
	runTimer('cooldown', 0.4)
	end
end

function onTimerCompleted(tag)
	if tag == 'cooldown' then
	    removeLuaSprite('static', false)
	end
end
