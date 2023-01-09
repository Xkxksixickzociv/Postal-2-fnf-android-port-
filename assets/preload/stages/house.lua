
function onCreatePost()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead');
	makeLuaSprite('house','GoinPostal/Dudes_house_bg',-393.15, -155.45)
	addLuaSprite('house',false)
	scaleObject('house', 1.5, 1.5)

	makeLuaSprite('shadedhouse','GoinPostal/Dudes_house_bg_v2',-393.15, -155.45)
	addLuaSprite('shadedhouse',false)
    doTweenAlpha('blahblah1', 'shadedhouse',0, 0.00001, 'linear');
	doTweenAlpha('coolswag1', 'shadedhouse',1, 98, 'linear');
	scaleObject('shadedhouse', 1.5, 1.5)

	makeAnimatedLuaSprite('fallingcat','GoinPostal/Cat_rain',getRandomInt(250, 2500), getRandomInt(-550, -550))
	addLuaSprite('fallingcat',false)
	addAnimationByPrefix('fallingcat', 'Faller', 'Cat instancia 1', 24, true)
    addAnimationByPrefix('fallingcat', 'splash', 'Cat splash  instancia 1', 24, true)
end


function onStepHit()
	if curStep == 1400 then
		makeLuaSprite('1panel', 'GoinPostal/cutscene_1_part_1', 1280, 720)
		makeLuaSprite('2panel', 'GoinPostal/cutscene_1_part_2', -36, -18)
		makeLuaSprite('3panel', 'GoinPostal/cutscene_1_part_3', -36, -18)
		scaleObject('1panel', 0.7, 0.7)
		scaleObject('2panel', 0.7, 0.7)
		scaleObject('3panel', 0.7, 0.7)
		setObjectCamera('1panel', 'hud');
		setObjectCamera('2panel', 'hud');
		setObjectCamera('3panel', 'hud');
	else
		if curStep == 1469 then
			addLuaSprite('1panel', true)
			doTweenAlpha('scene1', '1panel',1, 2, 'linear');
		else
			if curStep == 1470 then
				addLuaSprite('2panel', true)
				doTweenAlpha('thesecond', '2panel',1, 2, 'linear');
			else
				if curStep == 1471 then
					addLuaSprite('3panel', true)
					doTweenAlpha('thirdd', '3panel',1, 2, 'linear');
				else
					if curStep == 102 then
						doTweenX('running1X', 'dad', 1000, 0.2, 'linear')
					else
						if curStep == 104 then
							makeLuaSprite('darksprite', 'GoinPostal/dark', -390, -11150)
							addLuaSprite('darksprite', true)
							scaleObject('darksprite', 100, 100)
							doTweenAlpha('darkshit1', 'darksprite',0, 0.00001, 'linear');
							doTweenAlpha('fadeindarkshitz', 'darksprite',0.7, 1, 'linear');
						else
							if curStep == 106 then
							setProperty("darksprite.y", -150)
							else
								if curStep == 127 then
								doTweenX('running2X', 'dad', 250, 0.2, 'linear')
							else
								if curStep == 447 then
									doTweenX('running3X', 'dad', -950, 0.1, 'linear')
								else
									if curStep == 464 then
										doTweenX('running4X', 'dad', 250, 0.1, 'linear')
									else
										if curStep == 130 then
											doTweenAlpha('fadeindarkshitz2', 'darksprite',0, 0.3, 'linear');
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
	end
end
end
