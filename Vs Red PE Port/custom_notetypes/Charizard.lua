function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Charizard' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteskins/fuegoflechas'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.5'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
    		setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
		end
	end
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Charizard' then
		cameraFlash(game, 0xff9900, 1.8, true);
		playSound('Flame', 0.6);
		runTimer('burnt', 0.2, 35);
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Charizard' then

	end
end



function onTimerCompleted(tag, loops, loopsLeft)
		if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.0005);
	end
end