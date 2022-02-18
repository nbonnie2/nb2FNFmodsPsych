function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Warning Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'WARNINGNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '1'); --Default value is: 0.0475, health lost on miss
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			
			end
		end
	end
end
-- Lmao Lua script 
-- Good for Roblox Devs.
-- (Don't ask)

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Warning Note' then
        playSound('explode', 0.6);
		characterPlayAnim('boyfriend', 'dodge', true);
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Warning Note' then
		playSound('explode', 0.6);
		characterPlayAnim('boyfriend', 'hurt', true);
	end
end