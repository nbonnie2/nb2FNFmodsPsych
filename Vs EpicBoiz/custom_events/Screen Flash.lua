-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Screen Flash' then
		if 'flashingLights' then
		cameraFlash(game, value2, value1, false)
		end
	end
end