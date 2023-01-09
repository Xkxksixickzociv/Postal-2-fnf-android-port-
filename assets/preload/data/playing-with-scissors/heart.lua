function onCreate()
	makeAnimatedLuaSprite('bfeat', 'GoinPostal/Bf_heart_icons', 1110, 250)
	scaleObject('bfeat', .5, .5)
	setObjectCamera('bfeat', 'hud')
	addLuaSprite('bfeat', true) 
	addAnimationByPrefix('bfeat', 'Heartbeat', 'Heart  Bf instancia 1', 24, true)
	addAnimationByPrefix('bfeat', 'Losing', 'Heart  Bf loose instancia 1', 24, true)

	makeAnimatedLuaSprite('opeat', 'GoinPostal/postal_dude_heart_icons', 10, 250)
	scaleObject('opeat', .5, .5)
	setObjectCamera('opeat', 'hud')
	addLuaSprite('opeat', true) 
	addAnimationByPrefix('opeat', 'HBOP', 'Heart  Dude instancia 1', 24, true)
	addAnimationByPrefix('opeat', 'LOSER', 'Heart  Dude loose instancia 1', 24, true)
	

	makeLuaText('healthTxt', 'Sample Text', 949, 329 ,329)
	setTextSize('healthTxt', 35)
	setTextBorder('healthTxt', 0, '')
	setTextColor('healthTxt', 'FF0000')
	setTextFont('healthTxt', 'smash.ttf')
	setTextAlignment('healthTxt', 'right')
	addLuaText('healthTxt', true)
	makeLuaText('healthTxtOP', 'Sample Text', -549, 10 ,329)
	setTextSize('healthTxtOP', 35)
	setTextBorder('healthTxtOP', 0, '')
	setTextColor('healthTxtOP', 'FF0000')
	setTextFont('healthTxtOP', 'smash.ttf')
	setTextAlignment('healthTxtOP', 'right')
	addLuaText('healthTxtOP', true)
	
end

function onStepHit()
	if curStep == 767 then
		removeLuaSprite('bfeat')
		makeAnimatedLuaSprite('bfandpico', 'GoinPostal/bf_pico_icons', 1070, 250)
		scaleObject('bfandpico', .5, .5)
		setObjectCamera('bfandpico', 'hud')
		addLuaSprite('bfandpico', true)
		addAnimationByPrefix('bfandpico', 'Thembeat', 'Heart  Pico and bf instancia 1', 24, true)
		addAnimationByPrefix('bfandpico', 'TheyLose', 'Heart  Pico and bf loose  instancia 1', 24, true)
	end
end

function onBeatHit()
	objectPlayAnimation('bfeat', 'Heartbeat', 24, true)
	objectPlayAnimation('opeat', 'HBOP', 24, true)
end

function onUpdate()

	setTextString('healthTxt', math.floor(getProperty('health')*50))
	setTextString('healthTxtOP', math.floor(getProperty('dad.health')*50))
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('bfeat.flipX', true)
	setProperty('bfandpico.flipX', true)
	setProperty('scoreTxt.visible', false)
	setProperty('missesTxt.visible', false)

end

function opponentNoteHit()
	health = getProperty('health')
if getProperty('health') >= 0.05 then
   setProperty('health', health- 0.03);
   health = getProperty('dad.health')
   if getProperty('dad.health') >= 0.05 then
	  setProperty('dad.health', health+ 0.01);
   end
end
end

function goodNoteHit()
	health = getProperty('dad.health')
if getProperty('dad.health') > 0.1 then
   setProperty('dad.health', health- 0.02);
   health = getProperty('health')
	if getProperty('health') == 0.05 then
	objectPlayAnimation('bfeat', 'Fastbeat', true)
end
end
end