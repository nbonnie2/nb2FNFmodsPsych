stagetype = 'normal'

function onEvent(name, value1, value2)
	if name == 'pokemonbattleshit' then
		if value1 == 'pixel' then
			stagetype = 'pixel'
			setProperty('pokemonin2022.visible', false);
			setProperty('pokebattle.visible', true);
			setProperty('pika2.visible', false);
			setProperty('char2.visible', false);
			setProperty('pika21.visible', true);
			setProperty('char21.visible', true);
			triggerEvent('Change Character', 'dad', 'red-pixel');
			triggerEvent('Change Character', 'bf', 'bf-pokemon-pixel')
		end
		if value1 == 'normal' then
            stagetype = 'normal'
			setProperty('pokemonin2022.visible', true);
			setProperty('pokebattle.visible', false);
			setProperty('pika2.visible', true);
			setProperty('char2.visible', true);
			setProperty('pika21.visible', false);
			setProperty('char21.visible', false);
			triggerEvent('Change Character', 'dad', 'red');
			triggerEvent('Change Character', 'bf', 'bf-pokemon')
		end
	end
end
