function onCreate()

	makeLuaSprite('shadedhouse','GoinPostal/Dudes_house_bg_v2',-393.15, -155.45)
	addLuaSprite('shadedhouse',false)
	scaleObject('shadedhouse', 1.5, 1.5)

	makeAnimatedLuaSprite('fallingcat','GoinPostal/Cat_rain',getRandomInt(250, 2500), getRandomInt(-550, -550))
	addLuaSprite('fallingcat',false)
	addAnimationByPrefix('fallingcat', 'Faller', 'Cat instancia 1', 24, true)
    addAnimationByPrefix('fallingcat', 'splash', 'Cat splash  instancia 1', 24, true)

	makeAnimatedLuaSprite('deadmf', 'characters/Pico_FNF_full')
	addLuaSprite('deadmf', false)
	addAnimationByPrefix('deadmf', 'dead', 'Dead pico', 24, true)
	setProperty('deadmf.x', 1250)
	setProperty('deadmf.y', 970)

	makeLuaSprite('ketchup', 'GoinPostal/ketchup', 1000, 1050)
	scaleObject('ketchup', 0.6, 0.6)
end

function onUpdate()
    if getProperty('VLines.animation.curAnim.finished') == true and getProperty('VLines.animation.curAnim.name') == 'Second' then
        removeLuaSprite('VLines', true)
        setProperty('dad.alpha',1)
    end
end


function onStepHit()
	if curStep == 1100 then
		makeLuaSprite('firstpanel', 'GoinPostal/cutscene_2_part_1', -36, -18)
		makeLuaSprite('secondpanel', 'GoinPostal/cutscene_2_part_2', -36, -18)
		makeLuaSprite('thirdpanel', 'GoinPostal/cutscene_2_part_3', -36, -18)
		scaleObject('firstpanel', 0.7, 0.7)
		scaleObject('secondpanel', 0.7, 0.7)
		scaleObject('thirdpanel', 0.7, 0.7)
		setObjectCamera('firstpanel', 'hud');
		setObjectCamera('secondpanel', 'hud');
		setObjectCamera('thirdpanel', 'hud');
	else
		if curStep == 1183 then
			addLuaSprite('firstpanel', true)
			doTweenAlpha('scene1', 'firstpanel',1, 2, 'linear');
		else
			if curStep == 1200 then
				addLuaSprite('secondpanel', true)
				doTweenAlpha('thesecond', 'secondpanel',1, 2, 'linear');
			else
				if curStep == 1216 then
					addLuaSprite('thirdpanel', true)
					doTweenAlpha('thirdd', 'thirdpanel',1, 2, 'linear');
					removeLuaSprite('deadmf', true)
			else
				if curStep == 1234 then
					addLuaSprite('ketchup', false)
					doTweenAlpha('scene1', 'firstpanel',0, 0.5, 'linear');
					doTweenAlpha('thesecond', 'secondpanel',0, 0.5, 'linear');
					doTweenAlpha('thirdd', 'thirdpanel',0, 0.5, 'linear');
				else
					if curStep == 2175 then
						removeLuaSprite('NoRegerts', true)
						removeLuaSprite('bfeat', true)
						removeLuaSprite('opeat', true)
						removeLuaSprite('bfandpico', true)
						removeLuaSprite('pico', true)
						removeLuaSprite('deadloser', true)
						setProperty('healthTxt.x', 7000)
						setProperty('healthTxtOP.x', 7000)
						makeLuaSprite('darksprite', 'GoinPostal/dark', -500, 0)
						addLuaSprite('darksprite', true)
						scaleObject('darksprite', 100, 100)
						doTweenAlpha('fadeindarkshitz', 'darksprite',1, 0.00001, 'linear');
					else
						if curStep == 768 then
							cameraFlash('game', 'FFFFFF', 1.7, false)
						else
							if curStep == 50 then
								doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
							else
								if curStep == 52 then
								onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
								else
									if curStep == 55 then
										setProperty("fallingcat.y", 850)
									else
										if curStep == 56 then
											doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
											doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
										else
											if curStep == 120 then
												doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
												doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
												objectPlayAnimation('fallingcat', 'Faller')
												setProperty("fallingcat.y", -550)
												setProperty("fallingcat.x", getRandomInt(250, 2500))

											else
												if curStep == 140 then
													doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
												else
													if curStep == 142 then
														onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
														else
															if curStep == 145 then
																setProperty("fallingcat.y", 850)
															else
													if curStep == 146 then
														doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
														doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
													else
														if curStep == 149 then
															setProperty("fallingcat.y", getRandomInt(-550, -550))
															setProperty("fallingcat.x", getRandomInt(250, 2500))
														else
															if curStep == 170 then
																doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
																doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
																objectPlayAnimation('fallingcat', 'Faller')
																setProperty("fallingcat.y", -550)
																setProperty("fallingcat.x", getRandomInt(250, 2500))
															else
															if curStep == 210 then
																doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
															else
																if curStep == 212 then
																onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
																else
																	if curStep == 215 then
																		setProperty("fallingcat.y", 850)
																	else
																		if curStep == 216 then
																			doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
																			doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
																		else
																			if curStep == 219 then
																				setProperty("fallingcat.y", getRandomInt(-550, -550))
																				setProperty("fallingcat.x", getRandomInt(250, 2500))
																			else
																				if curStep == 250 then
																					doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
																					doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
																					objectPlayAnimation('fallingcat', 'Faller')
																					setProperty("fallingcat.y", -550)
																					setProperty("fallingcat.x", getRandomInt(250, 2500))
																				else
																				if curStep == 280 then
																					doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
																				else
																					if curStep == 282 then
																					onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
																					else
																						if curStep == 285 then
																							setProperty("fallingcat.y", 850)
																						else
																							if curStep == 286 then
																								doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
																								doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
																							else
																								if curStep == 289 then
																									setProperty("fallingcat.y", getRandomInt(-550, -550))
																									setProperty("fallingcat.x", getRandomInt(250, 2500))
																								else
																									if curStep == 290 then 
																										setProperty("fallingcat.visible", false)
																									end
																								end
																								end
																							end
																						end
																					end
																				end
																			end
																			end
																		end
																	end
																end
															end
														end
													end
													end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
end