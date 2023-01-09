
function onCreatePost()
	makeLuaSprite('house','GoinPostal/Dudes_house_bg',-393.15, -155.45)
	addLuaSprite('house',false)
	scaleObject('house', 1.5, 1.5)

	makeLuaSprite('shadedhouse','GoinPostal/Dudes_house_bg_v2',-393.15, -155.45)
	scaleObject('shadedhouse', 1.5, 1.5)

	makeAnimatedLuaSprite('fallingcat','GoinPostal/Cat_rain',getRandomInt(250, 2500), getRandomInt(-550, -550))
	addLuaSprite('fallingcat',false)
	addAnimationByPrefix('fallingcat', 'Faller', 'Cat instancia 1', 24, true)
    addAnimationByPrefix('fallingcat', 'splash', 'Cat splash  instancia 1', 24, true)
end


function onStepHit()
	if curStep == 1103 then
		doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
		setObjectOrder('shadedhouse', 3)
		cameraFlash('hud', '000000', 2, false)
		cameraFlash('game', 'DB1E16', 2, false)
		doTweenAlpha('coolswag1', 'shadedhouse',1, 3, 'linear');
	else								
		if curStep == 1105 then
		onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
		else
			if curStep == 1107 then
				setProperty("fallingcat.y", 850)
			else
				if curStep == 1109 then
					doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
					doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
				else
					if curStep == 1110 then
						doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
						doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
						objectPlayAnimation('fallingcat', 'Faller')
						setProperty("fallingcat.y", -550)
						setProperty("fallingcat.x", getRandomInt(250, 2500))
					else
						if curStep == 1183 then
							doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
							setObjectOrder('shadedhouse', 3)
							doTweenAlpha('coolswag1', 'shadedhouse',1, 3, 'linear');
						else								
							if curStep == 1185 then
							onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
							else
								if curStep == 1187 then
									setProperty("fallingcat.y", 850)
								else
									if curStep == 1189 then
										doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
										doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
									else
										if curStep == 1190 then
											doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
											doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
											objectPlayAnimation('fallingcat', 'Faller')
											setProperty("fallingcat.y", -550)
											setProperty("fallingcat.x", getRandomInt(250, 2500))
										else
											if curStep == 1253 then
												doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
												setObjectOrder('shadedhouse', 3)
												doTweenAlpha('coolswag1', 'shadedhouse',1, 3, 'linear');
											else								
												if curStep == 1255 then
												onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
												else
													if curStep == 1257 then
														setProperty("fallingcat.y", 850)
													else
														if curStep == 1259 then
															doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
															doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
														else
															if curStep == 1290 then
																doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
																doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
																objectPlayAnimation('fallingcat', 'Faller')
																setProperty("fallingcat.y", -550)
																setProperty("fallingcat.x", getRandomInt(250, 2500))
															else
																if curStep == 1403 then
																	doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
																	setObjectOrder('shadedhouse', 3)
																	doTweenAlpha('coolswag1', 'shadedhouse',1, 3, 'linear');
																else								
																	if curStep == 1405 then
																	onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
																	else
																		if curStep == 1407 then
																			setProperty("fallingcat.y", 850)
																		else
																			if curStep == 1409 then
																				doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
																				doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
																			else
																				if curStep == 1480 then
																					doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
																					doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
																					objectPlayAnimation('fallingcat', 'Faller')
																					setProperty("fallingcat.y", -550)
																					setProperty("fallingcat.x", getRandomInt(250, 2500))
																				else
																					if curStep == 1553 then
																						doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
																						setObjectOrder('shadedhouse', 3)
																						doTweenAlpha('coolswag1', 'shadedhouse',1, 3, 'linear');
																					else								
																						if curStep == 1555 then
																						onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
																						else
																							if curStep == 1557 then
																								setProperty("fallingcat.y", 850)
																							else
																								if curStep == 1559 then
																									doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
																									doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
																								else
																									if curStep == 1700 then
																										doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
																										doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
																										objectPlayAnimation('fallingcat', 'Faller')
																										setProperty("fallingcat.y", -550)
																										setProperty("fallingcat.x", getRandomInt(250, 2500))
																									else
																										if curStep == 1703 then
																											doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
																											setObjectOrder('shadedhouse', 3)
																											doTweenAlpha('coolswag1', 'shadedhouse',1, 3, 'linear');
																										else								
																											if curStep == 1705 then
																											onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
																											else
																												if curStep == 1707 then
																													setProperty("fallingcat.y", 850)
																												else
																													if curStep == 1709 then
																														doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
																														doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
																													else
																														if curStep == 1900 then
																															doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
																															doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
																															objectPlayAnimation('fallingcat', 'Faller')
																															setProperty("fallingcat.y", -550)
																															setProperty("fallingcat.x", getRandomInt(250, 2500))
																														else
																															if curStep == 1903 then
																																doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
																																setObjectOrder('shadedhouse', 3)
																																doTweenAlpha('coolswag1', 'shadedhouse',1, 3, 'linear');
																															else								
																																if curStep == 1905 then
																																onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
																																else
																																	if curStep == 1907 then
																																		setProperty("fallingcat.y", 850)
																																	else
																																		if curStep == 1909 then
																																			doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
																																			doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
																																		else
																																			if curStep == 2100 then
																																				doTweenAlpha('goaway', 'fallingcat',1, 0.00001, 'linear');
																																				doTweenAlpha('katgo', 'fallingcat',1, 0.1, 'linear');
																																				objectPlayAnimation('fallingcat', 'Faller')
																																				setProperty("fallingcat.y", -550)
																																				setProperty("fallingcat.x", getRandomInt(250, 2500))
																																			else
																																				if curStep == 2103 then
																																					doTweenY('faller1', 'fallingcat', 800, 0.2, 'linear')
																																					setObjectOrder('shadedhouse', 3)
																																					doTweenAlpha('coolswag1', 'shadedhouse',1, 3, 'linear');
																																				else								
																																					if curStep == 2105 then
																																					onTweenCompleted(objectPlayAnimation('fallingcat', 'splash', false))
																																					else
																																						if curStep == 2107 then
																																							setProperty("fallingcat.y", 850)
																																						else
																																							if curStep == 2109 then
																																								doTweenAlpha('goaway', 'fallingcat',0, 0.00001, 'linear');
																																								doTweenAlpha('katgo', 'fallingcat',0, 0.1, 'linear');
																																							else
																																								if curStep == 1871 then
																																									doTweenAlpha('bfgo', 'boyfriend',0, 1, 'linear');
																																									doTweenAlpha('dadgo', 'dad',0, 1, 'linear');
																																									doTweenAlpha('bar1go', 'bfeat',0, 1, 'linear');
																																									doTweenAlpha('opbargo', 'opeat',0, 1, 'linear');
																																									doTweenAlpha('bartextgo', 'healthTxt',0, 1, 'linear');
																																									doTweenAlpha('opbartextgo', 'healthTxtOP',0, 1, 'linear');
																																									noteTweenY('1', 0, 1500, 1, 'linear')
																																									noteTweenY('2', 1, 1500, 1, 'linear')
																																									noteTweenY('3', 2, 1500, 1, 'linear')
																																									noteTweenY('4', 3, 1500, 1, 'linear')
																																									noteTweenY('5', 4, 1500, 1, 'linear')
																																									noteTweenY('6', 5, 1500, 1, 'linear')
																																									noteTweenY('7', 6, 1500, 1, 'linear')
																																									noteTweenY('8', 7, 1500, 1, 'linear')
																																								else
																																									if curStep == 1999 then
																																									if downscroll == true then
																																										doTweenAlpha('bfcome', 'boyfriend',1, 1, 'linear')
																																										doTweenAlpha('dadcome', 'dad',1, 1, 'linear')
																																										doTweenAlpha('bar1come', 'bfeat',1, 1, 'linear')
																																										doTweenAlpha('opbarcome', 'opeat',1, 1, 'linear')
																																										doTweenAlpha('bartextcome', 'healthTxt',1, 1, 'linear')
																																										doTweenAlpha('opbartextcome', 'healthTxtOP',1, 1, 'linear')
																																										noteTweenY('1', 0, 600, 1, 'linear')
																																										noteTweenY('2', 1, 600, 1, 'linear')
																																										noteTweenY('3', 2, 600, 1, 'linear')
																																										noteTweenY('4', 3, 600, 1, 'linear')
																																										noteTweenY('5', 4, 600, 1, 'linear')
																																										noteTweenY('6', 5, 600, 1, 'linear')
																																										noteTweenY('7', 6, 600, 1, 'linear')
																																										noteTweenY('8', 7, 600, 1, 'linear')
																																									else
																																										doTweenAlpha('bfcome', 'boyfriend',1, 1, 'linear')
																																										doTweenAlpha('dadcome', 'dad',1, 1, 'linear')
																																										doTweenAlpha('bar1come', 'bfeat',1, 1, 'linear')
																																										doTweenAlpha('opbarcome', 'opeat',1, 1, 'linear')
																																										doTweenAlpha('bartextcome', 'healthTxt',1, 1, 'linear')
																																										doTweenAlpha('opbartextcome', 'healthTxtOP',1, 1, 'linear')
																																										noteTweenY('1', 0, 20, 1, 'linear')
																																										noteTweenY('2', 1, 20, 1, 'linear')
																																										noteTweenY('3', 2, 20, 1, 'linear')
																																										noteTweenY('4', 3, 20, 1, 'linear')
																																										noteTweenY('5', 4, 20, 1, 'linear')
																																										noteTweenY('6', 5, 20, 1, 'linear')
																																										noteTweenY('7', 6, 20, 1, 'linear')
																																										noteTweenY('8', 7, 20, 1, 'linear')
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
								end
							end
						end
					end
				end
			end
		end
	end
end																