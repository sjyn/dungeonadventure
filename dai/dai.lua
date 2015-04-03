--Emily's Game!
function room1()
	print() 
	print("You are in the first room. Choose a direction...")
	direc = io.read()
	if direc == "goto6" then
		return room6()
	end
	if direc == "east" then
		return room2()
	elseif direc == "south" then
	    return room3()
	elseif direc == "north" or direc == "west" then
		print("You just ran into a wall. Good Job.")
		return room1()
	elseif direc == "-1" then
		print("Exiting.....")
	else
		print(direc.." is not even a valid choice. Do you know your directions?")
		return room1()
	end
end

function room2()
	print()
	print("You are in the second room. Congrats!")
	if battle == true then
	print("A crazy warlock has appeared and wants to fight!")
	local eheal2 = 50
		while eheal2 > 0 do
			eheal2 = choose(eheal2)
			health = enemyChoice(health,eheal2)
			if health <= 0 then
				win = false
				return endGame()
			end
		end
	end
	battle = false
	print("Choose a direction...")
	input = io.read()
	if input == "-1" then
		print("Exiting.....")
	elseif input == "east" then
		battle = true
		return room5()
	elseif input == "north" or input == "south" then
		print("You just ran into a wall. Try again.")
		return room2()
	elseif input == "west" then
		battle = true
		return room1()
	else
		print(input.." isn't a valid choice. Try again!")
		return room2()
	end
end

function room3()
	print()
	print("You are now in the third room... Be afraid.")
	if battle == true then
		print("An old man sits in the center of the room. He want's to battle!")
		local eheal3 = 75
		while eheal3 > 0 do
			eheal3 = choose(eheal3)
			health = enemyChoice(health,eheal3)
			if health <= 0 then
				win = false
				return endGame()
			end
		end
		print("Good job in that battle!")
	end
	battle = false
	print("Choode a direction...")
	direc = io.read()
	if direc == "north" then
		battle = true
		return room1()
	elseif direc == "south" then
		battle = true
		return room7()
	elseif direc == "east" then
		battle = true
		return room4()
	elseif direc == "west" then
		print("You're in the third room, you shouldn't be running into walls anymore!")
		return room3()
	else
		print(direc.." isn't a valid choice, but props to you for trying!")
		return room3()
	end
end

function room4()
	print()
	print("Welcome to room four.")
	if battle == true then
		print("There is a fierce man-beast in this room! Prepare to fight!")
		local eheal4 = 150
		while eheal4 > 0 do
			eheal4 = choose(eheal4)
			health = enemyChoice(health,eheal4)
			if health <= 0 then
				win = false
				return endGame()
			end
		end
		print("That thing had a lot of health (150 to be exact)... But you won!")
	end
	print("Choose a direction...")
	battle = false
	direc = io.read()
	if direc == "east" then
		battle = true
		return room6()
	elseif direc == "south" then
		battle = true
		return room8()
	elseif direc == "west" then
		battle = true
		return room3()
	elseif direc == "north" then
		print("Technically room 2 is above you, but since there's a wall,\nyou can't go there.")
		return room4()
	else
		print(direc.." wasn't a valid choice. Why do you do this to me??")
		return room4()
	end
end

function room5()
	print()
	print("You are now in room five. This room is a healing room.")
	print("You can come back here at any time to replenish your health and mana.")
	health = 100
	mana = 100
	print("Your current stats are:\nhealth:"..health.." mana:"..mana)
	print("When you are ready, choose a direction...")
	battle = true
	direc = io.read()
	if direc == "north" then
		print("You just ran into another wall. Silly you.")
		return room5()
	elseif direc == "west" then
	    return room2()
	elseif direc == "south" then
		return room6()
	elseif direc == "east" then
		print("You really don't want to go there. Mostly cause there's a wall...")
		return room5()
	else
		print(direc.." is not a valid choice. Try again!")
		return room5()
	end
end

function room6()
	print()
	print("You are now in room six.")
	if battle == true then
		print("Oh look at this, there's another enemy. You know the drill.")
		local eheal7 = 200
		while eheal7 > 0 do
			eheal7 = choose(eheal7)
			health = enemyChoice(health,eheal7)
			if health <= 0 then
				win = false
				return endGame()
			end
		end
		print()
		print("Nice Job! You've fought a lot of enemies by now... wait... There's another!")
		print()
		local eheal44 = 500
		while eheal44 > 0 do
			eheal44 = choose(eheal44)
			health = enemyChoice(health,eheal44)
			if health <= 0 then
				win = false
				return endGame()
			end
		end
		print("Hot damn he was tough. 500 HP. Anyways, moving on...")
	end
	battle = false
	print("Choose a direction...")
	direc = io.read()
	if direc == "north" then
		battle = true
		return room5()
	elseif direc == "west" then
		battle = true
	    return room4()
	elseif direc == "south" then
		print("There is no room below you, just the nebulous void of\nthe null stack. None can leave there...")
		return room6()
	elseif direc == "east" then
		print("If you try to go south in this room, you'll get a much better message. Try it.")
		return room6()
	else
		print(direc.." is not a valid choice. Try again!")
		return room6()
	end
end

function room7()
	print()
	print("You are now in room seven. Maybe you're close to the end?")
	if battle == true then
		print("This enemy is even tougher than any you have faced to far!")
		local eheal222 = 750
		while eheal222 > 0 do
			eheal222 = choose(eheal222)
			health = enemyChoice(health,eheal222)
			if health <= 0 then
				win = false
				return endGame()
			end
		end
		print("Sweet Job! Here's a hint: room 8 is the last room!")
	end
	print("Choose a direction...")
	direc = io.read()
	if direc == "north" then
		battle = true
		return room3()
	elseif direc == "west" then
		print("Oh man, you could have not run into that wall. But you did.")
	    return room7()
	elseif direc == "south" then
		print("You're on the bottom of the map. I'll add more somtime...\noh and you hit a wall.")
		return room7()
	elseif direc == "east" then
		battle = true
		return room8()
	else
		print(direc.." is not a valid choice. Try again!")
		return room7()
	end
end

function room8()
	print()
	print("The final boss has appeared! Prepare for the last battle!")
	local eheal123 = 1000
	while eheal123 > 0 do
		eheal123 = choose(eheal123)
		health = enemyChoice(health,eheal123)
		if health <= 0 then
			win = false
			return endGame()
		end
	end
	win = true
	return endGame()
end

function choose(enemyHealth)
	print("Choose your attack!")
	print("mana:"..mana.." health:"..health)
	print(unpack(attacks))
	print()
	choice = io.read()
	if choice == attacks[1] then
		if hasEnoughMana(mana) then
			drawFire()
			enemyHealth = enemyHealth - 50
			mana = mana - 10
			return enemyHealth
		else
			print("Not enough Mana!")
			return choose(enemyHealth)
		end
	elseif choice == attacks[2] then
		if hasEnoughMana(mana) then
			drawIce()
			enemyHealth = enemyHealth - 50
			mana = mana - 10
			return enemyHealth
		end
	elseif choice == attacks[3] then
		if(hasEnoughMana(mana)) then
			drawLightning()
			enemyHealth = enemyHealth - 100
			mana = mana - 15
			return enemyHealth
		end
	elseif choice == "fuck" then
		mana = 100
		health = 100
		drawFuck()
		return 0
	elseif choice == attacks[4] then
		drawSword()
		enemyHealth = enemyHealth - 20
		return enemyHealth
	elseif choice == attacks[5] then
		drawBlock()
		if health <= 90 then
			health = health + 10
		end
		return enemyHealth
	elseif choice == attacks[6] then
		if health == 100 then
			print("You already have full health!")
			return choose(enemyHealth)
		end
		if mana >= 20 then
			drawHeal()
			if health == 90 then
				health = health + 10
				mana = mana - 10
			elseif health <= 80 then
				health = health + 20
				mana = mana - 20
			end
		else
			print("Not enough Mana!")
			return choose(enemyHealth)
		end
		return enemyHealth
	else
		print("\""..choice.."\" is not a valid option. Choose again!")
		return choose(enemyHealth)
	end
end

function hasEnoughMana(amnt)
	if amnt >= 10 then
		return true
	else
		return false
	end
end

function enemyChoice(playerHealth,ehealth)
	if ehealth <= 0 then
		print("Enemy Defeated!")
		if mana <= 90 then
			mana = mana + 10
		end
		if playerHealth <= 90 then
			playerHealth = playerHealth + 10
		end
		return playerHealth
	else
		num = math.random(100)
		if num % 2 == 0 then
			drawSlash()
			print("Enemy attacked you with \"slash\"!")
			return playerHealth - 10
		elseif num % 3 == 0 then
			drawSlashMissed()
			print("Enemy attacked you with \"slash\" but missed!")
			return playerHealth
		elseif num % 4 == 0 then
			drawMagic()
			print("Enemy attacked you with \"magic\"!")
			return playerHealth - 20
		elseif num % 7 == 0 then
			drawSacredMagic()
			print("Enemy has attacked you with \"sacred magic\"!")
			return playerHealth - 50
		else
			drawNoAttack()
			print("Enemy did not attack this turn")
			return playerHealth
		end
	end
end

function endGame()
	if win == true then
		print("Congrats! you wont the game! Check back for more updated in the future!")
		print("Your final stats are:\nhealth:"..health.." mana:"..mana)
	else
		print("GAME OVER! You lost :(")
	end
	print("Play Again? (Y / N)")
	ans = io.read()
	if ans == "Y" or ans == "y" then
		battle = true
		win = false
		mana = 100
		health = 100
		return start()
	else
		print("Goodbye!")
	end
end

function drawFire()
	print()
	print("        ////                        //   ////   //")
	print("       ////          ///////       //   ////   // ")
	print("  //////////////     ///////      //////////////  ")
	print(" //    //           ///////             //        ")
	print("//     //                               //        ")
	print("      ////                            /////       ")
	print("     //  //                          //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawIce()
	print()
	print("        ////                        //   ////   //")
	print("       ////          ///////>>     //   ////   // ")
	print("  //////////////                  //////////////  ")
	print(" //    //            //////>>           //        ")
	print("//     //                               //        ")
	print("      ////          ///////>>         /////       ")
	print("     //  //                          //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawLightning()
	print()
	print("        ////          //    //      //   ////   //")
	print("       ////            //    //    //   ////   // ")
	print("  //////////////     //      //   //////////////  ")
	print(" //    //              //   //          //        ")
	print("//     //             //    //          //        ")
	print("      ////           //      //       /////       ")
	print("     //  //           //    //       //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawSword()
	print()
	print("        ////                        //   ////   //")
	print("       ////     ||                 //   ////   // ")
	print("  //////////////||/////////>      //////////////  ")
	print(" //    //       ||                      //        ")
	print("//     //                               //        ")
	print("      ////                            /////       ")
	print("     //  //                          //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawBlock()
	print()
	print("        ////    ||   +                   ////     ")
	print("       ////     ||                      ////      ")
	print("  //////////////||    +           //////////////  ")
	print(" //    //       ||                //    //    //  ")
	print("//     //       ||    +                 //        ")
	print("      ////                            /////       ")
	print("     //  //         +                //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawSlash()
	print()
	print("        ////                             ////     ")
	print("       ////                     ||      ////      ")
	print("  //////////////           <////||//////////////  ")
	print(" //    //     //                ||      //        ")
	print("//     //     //                        //        ")
	print("      ////                            /////       ")
	print("     //  //                          //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawSlashMissed()
	print()
	print("        ////   //         ?              ////     ")
	print("       ////    //               ||      ////      ")
	print("  //////////////        ?  <////||//////////////  ")
	print(" //    //                       ||      //        ")
	print("//     //                 ?             //        ")
	print("      ////                            /////       ")
	print("     //  //                          //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawMagic()
	print()
	print("        ////            --   --          ////  // ")
	print("       ////               --    --      ////   // ")
	print("  //////////////                  //////////////  ")
	print(" //    //     //         --    --       //        ")
	print("//     //     //            --          //        ")
	print("      ////                            /////       ")
	print("     //  //                          //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawSacredMagic()
	print()
	print("        ////                 <||         ////  // ")
	print("       ////                  <||        ////   // ")
	print("  //////////////     <<<<    |||  //////////////  ")
	print(" //    //     //     <<<<    |||        //        ")
	print("//     //     //     <<<<    |||        //        ")
	print("      ////                   <||      /////       ")
	print("     //  //                  <||     //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawNoAttack()
	print()
	print("        ////                  Z  Z    Z  ////     ")
	print("       ////                    Z    Z   ////      ")
	print("  //////////////                  //////////////  ")
	print(" //    //     //                        //        ")
	print("//     //     //                        //        ")
	print("      ////                            /////       ")
	print("     //  //                          //////       ")
	print("    //   //                         ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawHeal()
	print()
	print("        ////  +    +                     ////     ")
	print("       ////                             ////      ")
	print("  //////////////     +            //////////////  ")
	print(" //    //     //                        //        ")
	print("//     //     //   +                    //        ")
	print("      ////                            /////       ")
	print("     //  //     +                    //////       ")
	print("    //   //  +                      ///////       ")
	print("   //     //                       ////////       ")	
	print()
end

function drawFuck()
	print()
	print("    //  ////    //                                ")
	print("   //  ////    //                                 ")
	print("  //////////////                                  ")
	print("       //                                         ")
	print("       //                            ////         ")
	print("      //8/////////D~~///////////////////          ")
	print("     //  //         //////    //   ////           ")
	print("    //   //        ///////    //                  ")
	print("   //     //      ////////    //                  ")	
	print()
end

function start()
	print("Welcome to...")
	print("////////////    //        //   //      //   ///////////    //////////   ////////////   //      //")
	print("//         //   //        //   ///     //   //             //           //        //   ///     //")
	print("//         //   //        //   ////    //   //             //           //        //   ////    //")
	print("//         //   //        //   // //   //   //             //////////   //        //   // //   //")
	print("//         //   //        //   //  //  //   //   //////    //           //        //   //  //  //")
	print("//         //   //        //   //   // //   //       //    //           //        //   //   // //")
	print("//         //   //        //   //    ////   //       //    //           //        //   //    ////")
	print("///////////      /////////     //     ///   ///////////    //////////   ////////////   //     ///")
	print()
	print("///////////   ///////////    //             //  /////////    //      //  /////////// //        //  ////////  //////// ")
	print("//       //   //        //    //           //   //           //      //      //      //        //  //    //  //       ")
	print("//       //   //        //     //         //    //           ////    //      //      //        //  //    //  //       ")
	print("///////////   //        //      //       //     /////////    // //   //      //      //        //  ////////  //////// ")
	print("//       //   //        //       //     //      //           //  //  //      //      //        //  // //     //       ")
	print("//       //   //        //        //   //       //           //   // //      //      //        //  //  //    //       ")
	print("//       //   //        //         // //        //           //    ////      //      //        //  //   //   //       ")
	print("//       //   ///////////           ///         /////////    //     ///      //       //////////   //    //  ////////!")
	print()
	print("The text-based adventure created by newline.sjyn")
	print("Release 1.0")
	print("Written in Lua 5 using sublime text 3")
	print("Wrapped in Java using LuaJ")
	print("\n\n")
	return room1()
end

battle = true
health = 100
mana = 100
attacks = {}
attacks[1] = "fire"
attacks[2] = "ice"
attacks[3] = "lightning"
attacks[4] = "sword"
attacks[5] = "block" 
attacks[6] = "heal"
win = false
start()
