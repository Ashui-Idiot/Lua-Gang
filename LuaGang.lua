local discordia = require("discordia") 
local client = discordia.Client() 

client:on('ready', function() 
	print('Im on under the user '.. client.user.username)  --prints letting me know its on, seriouslt are you blind?
end) 

state = 1
client:on('messageCreate', function(message)
	if message.content == ';off' then --Off command
		if message.author.id == "412354487953653760" then
			state = state -1
			print('Bot Off')
		end
		if message.author.id == adim then
			state = state -1
			print('Bot Off')
		end
		if message.author.id == adim1 then
			state = state -1
			print('Bot Off')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';on' then --On command
		if message.author.id == "412354487953653760" then
			state = state +1
			print('Bot On')
		end
		if message.author.id == adim then
			state = state +1
			print('Bot On')
		end
		if message.author.id == adim1 then
			state = state +1
			print('Bot On')
		end
	end
end)

ban = 0
ban1 = 0
client:on('messageCreate', function(message)
	if message.content == ';beaned' then
		print('Banned people are')
		print(ban1)
		print(ban)
	end
	if message.content:sub(1,6) == ';unban' then
		if message.author.id == adim then
			if ban == message.content:sub(11,28) then
				ban = 0
				message.channel:send("Unbanned")
			else
				if ban1 == message.content:sub(11,28) then
					ban1 = 0
					message.channel:send("Unbanned")
				else
					message.channel:send('PersonNotFound')
				end
			end
		end
		if message.author.id == adim1 then
			if ban == message.content:sub(11,28) then
				ban = 0
				message.channel:send("Unbanned")
			else
				if ban1 == message.content:sub(11,28) then
					ban1 = 0
					message.channel:send("Unbanned")
				else
					message.channel:send('PersonNotFound')
				end
			end
		end
		if message.author.id == '412354487953653760' then
			if ban == message.content:sub(11,28) then
				ban = 0
				message.channel:send("Unbanned")
			else
				if ban1 == message.content:sub(11,28) then
					ban1 = 0
					message.channel:send("Unbanned")
				else
					message.channel:send('PersonNotFound')
				end
			end
		end
	end
	if message.content:sub(1,4) == ';ban' then --Ban command for admins
		if message.author.id == adim then
			if ban == 0 then
				ban = message.content:sub(9,26)
				message.channel:send("banned")
			else
				ban1 = message.content:sub(9,26)
				message.channel:send("banned")
			end
		end
		if message.author.id == adim1 then
			if ban == 0 then
				ban = message.content:sub(9,26)
				message.channel:send("banned")
			else
				ban1 = message.content:sub(9,26)
				message.channel:send("banned")
			end
		end
		if message.author.id == '412354487953653760' then
			if ban == 0 then
				ban = message.content:sub(9,26)
				message.channel:send("banned")
			else
				ban1 = message.content:sub(9,26)
				message.channel:send("banned")
			end
		end
	end
end)

adim = 0
adim1 = 0
client:on('messageCreate', function(message)
	if message.author.id == "412354487953653760" then
		if message.content:sub(1,7) == ';admin ' then --God these equal signs are killing my eyes, lets me makes admins
			if adim == 0 then
				adim = message.content:sub(11,28)
				message:reply('new admin added')
			else
				adim1 = message.content:sub(11,28)
				message:reply('new admin added')
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';state' then
		print(state)
	end
end)

client:on("messageCreate", function(message)
	local content = message.content
	local author = message.author
	if state >= 1 then
		if content == ";adminhelp" then --says it right there you fucking dunce
			if message.author.id ~= ban then --Ban checking, used from here on out
				if message.author.id ~= ban1 then
					print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
					message:reply {
						embed = {
							title = "Admin help",
							description = "adim",

							fields = { 
								{
									name = "Ban",
									value = ";ban (args) args is their id, 2 bans possible at one time",
									inline = true
								},
								{
									name = "On",
									value = ";on Turns bot on, use once spam is done",
									inline = false
								},
								{
									name = "Off",
									value = ";off Turns bot off, use if spam",
								inline = true
								}
							},
							footer = {
							text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(209, 110, 255).value
						}
					}
				else
					message:reply('You are banned. If you believe this is a mistake contact a admin')
				end
			end
		end
	end
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author
	if state >= 1 then
		if content == ";bots" then --Shows my bot buddies
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then
					print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
					message:reply {
						embed = {
							title = "Bots",
							description = "null",

							fields = { 
								{
									name = "Java Gang",
									value = "Prefix = >, maker = ultra gru prayer",
									inline = true
								},
								{
									name = "Python Gang",
									value = "Prefix = ., Creator = mariyt",
									inline = false
								},
								{
									name = "Lua Gang",
									value = "Prefix = ;, Creator = Many Foxes",
								inline = true
								}
							},
							footer = {
							text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(184, 0, 15).value
						}
					}
				else
					message:reply('You are banned. If you believe this is a mistake contact a admin')
				end
			end
		end
	end
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author
	if state >= 1 then
		if content == ";hotline" then --Suicide hotline, just put this in everything i do.
			print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
			message:reply {
				embed = {
					title = "Hotline",
					description = "The hotline: 800-273-8255",
					author = {
						name = author.username,
						icon_url = author.avatarURL
					},
					fields = { 
						{
							name = "Dont do it.",
							value = "Somebody out their somewhere loves you, dont kill youself, if you are thinking about it call somebody or the hotline. Please do.",
							inline = true
						}
					},
					footer = {
						text = "Made by Many Foxes#7107"
					},
					color = discordia.Color.fromRGB(255, 105, 180).value
				}
			}
		end
	end
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author
	if state >= 1 then
		if content == ";help" then --Just the help command
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then
					print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
					message:reply {
						embed = {
							title = "Commands",
							description = "List of commands",
							fields = {
								{
									name = "Help",
									value = ";help - Shows this menu",
									inline = true
								},
								{
									name = "Hug",
									value = ";hug - Gives you a hug",
									inline = false
								},
								{
									name = "Update",
									value = ";update - Shows latest update",
									inline = true
								},
								{
									name = "Coin",
									value = ";cf - Flips a coin",
									inline = false
								},
								{
									name = "Bots",
									value = ";bots - Displays list of the cool bots",
									inline = true
								},
								{
									name = "Hotline",
									value = ";hotline - Shows the suicide hotline. They are their to talk to you when you feel down",
									inline = false
								},
								{
									name = "Roast",
									value = ";roast - Roasts you",
									inline = true
								},
								{
									name = "Lottery",
									value = ";lottery - A 1 in a million chance of sending a secret message",
									inline = false
								},
								{
									name = "Say",
									value = ";say (args) - Says what is instructed to be said. Max length of 5000",
									inline = true
								},
								{
									name = "SoS",
									value = ";soshelp - Info on the ;sos command and other commands.",
									inline = false
								},
								{
									name = "Tic Tac Toe",
									value = ";ttthelp - More info on tic tac toe.",
									inline = true
								},
								{
									name = "Embed",
									value = ";embed - Puts something into a embed.",
									inline = false
								},
								{
									name = "Poll",
									value = ";poll - makes a poll.",
									inline = true
								},
								{
									name = "Meme",
									value = ";meme - funny stuff is spat at you. currently 16 possible memes",
									inline = false
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(0, 217, 155).value
						}
					}
				else
					message:reply('You are banned from using this bot. If you believe this is a mistake contact a admin')
				end
			end
		end
	end
end)
client:on("messageCreate", function(message)
	local content = message.content
	local author = message.author
	if state >= 1 then
		if content == ";soshelp" then --Help command on share or steal
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then
					print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
					message:reply {
						embed = {
							title = "SoS",
							description = "A social experiment sort-of",

							fields = { 
								{
									name = "Info",
									value = "SoS is share or steal. You choose to share of steal using st for steal or sh for share. You actions effect the next player and the overall outcome",
									inline = true
								},
								{
									name = "SoS Command",
									value = ";sos sh/st - Share or steal. Will tell outcome",
									inline = false
								},
								{
									name = "Coins",
									value = ";coins - Displays coin amounts of bots and players",
								inline = true
								}
							},
							footer = {
							text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(171, 255, 25).value
						}
					}
				else
					message:reply('You are banned. If you believe this is a mistake contact a admin')
				end
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';cf' then
		if state >= 1 then
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then --Coinflip (make sure to use so i can rig it!)
					local author = message.author
					print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
					math.randomseed(os.time())
					math.random()
					if (math.random() > .5) then
						message.channel:send('Rolling...')
						print("Heads")
						message.channel:send {
							content = "Heads",
							file = "heads.gif",
						}
					end
					if (math.random() < 0.5) then
						message.channel:send('Rolling...')
						print("Tails")
						message.channel:send {
							content = "Tails",
							file = "tails.gif",
						}
					else
						message.channel:send('You are banned from this bot. If you believe this is a mistake contact a admin')
					end
				end
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';lottery' then
		if message.author.id ~= ban then
			if message.author.id ~= ban1 then
				local author = message.author
				print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
				if state >= 1 then --Lottery, lottery, loses all your money!
					math.randomseed(os.time())
					math.random()
					if (math.random() > .0000001) then
					message.channel:send('You failed')
					end
					if (math.random() < 0.000001) then
						message.channel:send('Wow you actually won this, thats a 1 in a million chance')
						print("sombody won holy hell")
					end
				end
			else
				message.channel:send('You are banned from using the bot. Please contact Many Foxes#7107 if you think this is a mistake.')
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';dupe' then
		local author = message.author
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if state >= 1 then
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then
					message.channel:send('stop asking if their is a dupe its anoying as hell.') --To deal with annoying 5 year olds asking about dupes
				else
					message:reply('You are banned from using the bot. Please contact Many Foxes#7107 if you think this is a mistake.')
				end
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';hug' then
		local author = message.author.id
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if state >= 1 then
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then
					message.channel:send('<(^-^<) Hug!') --Hug (i want one please)
				else
					message.channel:send('you dont deserver a hug because your banned')
				end
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';update' then
		local author = message.author
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if state >= 1 then
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then
					message.channel:send('```diff\nUpdates\n--Quality of life fixes```') --Update command to show updates MAKE A EMBED FFS
				else
					message:reply('You are banned from using the bot. Please contact Many Foxes#7107 if you think this is a mistake.')
				end
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';test' then
		local author = message.author
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if state >= 1 then
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then --Test command???
					message.channel:send('```you found the super duper secret command```')
				else
					message:reply('You are banned from using the bot. Please contact Many Foxes#7107 if you think this is a mistake.')
				end
			end
		end
	end
end)

client:on("messageCreate", function(message)
	if message.content:sub(1,3) == ";id" then
		local id = message.content:sub(8,25)
		message.channel:send(id)
	end
end)

editON = 0
client:on('messageCreate', function(message)
	if message.author.id ~= client.user.id then
		editMSG = message.content:sub(7,2000)
		if message.content:sub(1,5) == ';edit' then
			print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
			editMSG = message.content:sub(7,2000)
			editON = 1
			message.channel:send('e')
		end
	end
	if editON == 1 then
		message:setContent(editMSG)
		editON = 0
	end
end)

client:on('messageCreate', function(message)
	if message.content:sub(1,4) == ';say' then --Say command obv
		local author = message.author
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		local msg = message.content:sub(6,5006)
		if state >= 1 then
			if message.content:sub(6,7) == 'm!' then
				message.channel:send('no.')
			elseif message.content:sub(6,6) == " " then
				message:reply('lmao you tried to spam')
				print("Some guy tried to spam, it was:")
				print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
			elseif message.content:sub(6,6) == ";" then
				message:reply('lmao you tried to spam')
				print("Some guy tried to spam, it was:")
				print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
			elseif message.content:sub(6,6) ~= '\n' then
				if message.author.id ~= ban then
					if message.author.id ~= ban1 then
						message:reply(msg)
					else
						message:reply('You are banned from using the bot. Please contact Many Foxes#7107 if you think this is a mistake.')
					end
				else
					message:reply('You are banned from using the bot. Please contact Many Foxes#7107 if you think this is a mistake.')
				end
			else
				message.channel:send('ayo possible spam mighta just happened so i blocked it')
				print("Some guy tried to spam, it was:")
				print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';db' then --Old meme script, goes unused for now.
		local author = message.author
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if state >= 1 then
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then
					message.channel:send('.tell get double botted')
				else
					message:reply('You are banned from using the bot. Please contact Many Foxes#7107 if you think this is a mistake.')
				end
			end
		end
	end
end)

last = 0
coins = 0
bot_coin = 0
client:on('messageCreate', function(message)
	if message.content:sub(1,4) == ';sos' then
		if last == 0 then
			if message.content:sub(6,8) == 'st' then
				last = 1
				message.channel:send('You won 3 coins, I won none. Remember, this effects the next players experience')
				coins = coins +3
			end
			if message.content:sub(6,8) == 'sh' then --Check next code note
				last = 0
				message.channel:send('You won 2 coins, I won 2. Remember, this effects the next players experience')
				coins = coins +2
				bot_coin = bot_coin +2 --Check above code note
			end
		end
		if last == 1 then
			if message.content:sub(6,8) == 'st' then
				last = 1
				message.channel:send('Neither of us one anything due to the last person stealing too. Remeber, this effects the next players experience')
			end
			if message.content:sub(6,8) == 'sh' then --The "AI" (it really is just checkign what a variable is)
				last = 0
				message.channel:send('The bot stole due to the last person stealing. The bot gains 3, you gain nothing')
				bot_coin = bot_coin +3
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';coins' then --Checks coin value, transfer to a embed
		message.channel:send('The bot has:')
		message.channel:send(bot_coin)
		message.channel:send('While the players have:')
		message.channel:send(coins)
	end
end)


pollON = 0
client:on('messageCreate', function(message)
	if message.content:sub(1,5) == ';poll' then
		pollQ = message.content:sub(7,2000)
		pollON = 1
		message:reply {
			embed = {
				title = pollQ,
				description = 'Yes or no?'
			}
		}
	end
	if pollON == 1 then
		if message.author.id == client.user.id then
			message:addReaction('✅')
			message:addReaction('❌')
			pollON = 0
		end
	end
end)


client:on("messageCreate", function(message)
	local content = message.content
	local author = message.author
	if state >= 1 then
		if content == ";ttthelp" then
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then
					print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
					message:reply {
						embed = {
							title = "Tic Tac Toe",
							description = "Tic Tac Toe help", --Read right here you dunce

							fields = { 
								{
									name = "How 2 Play",
									value = ";tttplay (var) - The var is their user id",
									inline = true
								},
								{
									name = "Actual game",
									value = ";ttt (var) - Use A1 to A3 to choose where to play, once your done use ;reset",
									inline = false
								},
								{
									name = "Board",
									value = ";board - Use to get the board. Check description for more info",
								inline = true
								}
							},
							footer = {
							text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(171, 255, 25).value
						}
					}
				else
					message:reply('You are banned. If you believe this is a mistake contact a admin')
				end
			end
		end
	end
end)
--Setting up variables
o = 0
x = 0
a1 = "⠀"
a2 = "⠀"
a3 = "⠀"
b1 = "⠀"
b2 = "⠀"
b3 = "⠀"
c1 = "⠀"
c2 = "⠀"
c3 = "⠀"
tttlast = 0
client:on('messageCreate', function(message)
	if message.author.id == x then
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if message.content == ';reset' then -- Reseting for mid game. Multiple instances so all people who where in the game and me can reset
			o = 0
			x = 0
			a1 = "⠀"
			a2 = "⠀"
			a3 = "⠀"
			b1 = "⠀"
			b2 = "⠀"
			b3 = "⠀"
			c1 = "⠀"
			c2 = "⠀"
			c3 = "⠀"
			tttlast = 0
			message.channel:send("Game reset.")
		end
	end
	if message.author.id == o then
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if message.content == ';reset' then
			o = 0
			x = 0
			a1 = "⠀"
			a2 = "⠀"
			a3 = "⠀"
			b1 = "⠀"
			b2 = "⠀"
			b3 = "⠀"
			c1 = "⠀"
			c2 = "⠀"
			c3 = "⠀"
			tttlast = 0
			message.channel:send("Game reset.")
		end
	end
	if message.author.id == '412354487953653760' then
		if message.content == ';reset' then
			o = 0
			x = 0
			a1 = "⠀"
			a2 = "⠀"
			a3 = "⠀"
			b1 = "⠀"
			b2 = "⠀"
			b3 = "⠀"
			c1 = "⠀"
			c2 = "⠀"
			c3 = "⠀"
			tttlast = 0
			message.channel:send("Game reset.")
		end
	end
end)

--[[
client:on('messageCreate', function(message)
	if message.content:sub(1,5) == ';poll' then
		message:addReaction("✅")
		message:addReaction("❌") --make this a embed : no dont i almost grabbed the razors not kidding you when i tried to
	end
end)
--]]
client:on('messageCreate', function(message)
	if message.content:sub(1,6) == ";embed" then
		math.randomseed(os.time())
		local author = message.author.id
		local msg = message.content:sub(8,2000)
		local r = math.random(1,255)
		local g = math.random(1,255)
		local b = math.random(1,255)
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if state >= 1 then
			if author ~= ban then
				if author ~= ban1 then
					message:reply {
						embed = {
							title = msg,
							description = "Made by Many Foxes",
							color = discordia.Color.fromRGB(r, g, b).value
						}
					}
				else
					message.channel:send("You are banned from the bot, please contact a admin if you believe this is a mistake.")
				end
			else
				message.channel:send("You are banned from the bot, please contact a admin if you believe this is a mistake.")
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if state >= 1 then
		if message.content == ";board" then
			print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
			message:reply {
				embed = {
					title = "tic tac toe",

					fields = { 
						{
							name = a1,
							value = "A1",
							inline = true
						},
						{
							name = a2,
							value = "A2",
							inline = true
						},
						{
							name = a3,
							value = "A3",
							inline = true
						},
						{
							name = "⠀",
							value = "⠀",
							inline = false
						},
						{
							name = b1,
							value = "B1",
							inline = true
						},
						{
							name = b2,
							value = "B2",
							inline = true
						},
						{
							name = b3,
							value = "B3",
							inline = true
						},
						{
							name = "⠀",
							value = "⠀",
							inline = false
						},
						{
							name = c1,
							value = "C1",
							inline = true
						},
						{
							name = c2,
							value = "C2",
							inline = true
						},
						{
							name = c3,
							value = "C3",
							inline = true
						}
					},
					footer = {
						text = "Made by Many Foxes#7107"
					},
					color = discordia.Color.fromRGB(163, 255, 169).value
				}
			}
		end
		if message.author.id ~= ban then
			if message.author.id ~= ban1 then
				if message.content:sub(1,8) == ';tttplay' then --Game start.
					print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
					if o == 0 then --Checks if a game is going, should make a function thats if a game is happening but idc
						x = message.author.id
						o = message.content:sub(13,30)
						print("X is")
						print(x)
						print("o is")
						print(o)
						message.channel:send('Game started. Make a move')
					end
				end
			end
		end
	end
end)
client:on('messageCreate', function(message) --Couldnt get a function to work so I just put the embed on everything (Checking where the X is)
	if message.author.id == x then
		if tttlast == 0 then
			if message.content == ';ttt a1' then
				if a1 == "⠀" then
					a1 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt a2' then
				if a2 == "⠀" then
					a2 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt a3' then
				if a3 == "⠀" then
					a3 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt b1' then
				if b1 == "⠀" then
					b1 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt b2' then
				if b2 == "⠀" then
					b2 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt b3' then
				if b3 == "⠀" then
					b3 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt c1' then
				if c1 == "⠀" then
					c1 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt c2' then
				if c2 == "⠀" then
					c2 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt c3' then
				if c3 == "⠀" then
					c3 = "x"
					tttlast = 1
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
		end
	end
	if message.author.id == o then
		if tttlast == 1 then
			if message.content == ';ttt a1' then
				if a1 == "⠀" then
					a1 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt a2' then
				if a2 == "⠀" then
					a2 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt a3' then
				if a3 == "⠀" then
					a3 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt b1' then
				if b1 == "⠀" then
					b1 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt b2' then
				if b2 == "⠀" then
					b2 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt b3' then
				if b3 == "⠀" then
					b3 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt c1' then
				if c1 == "⠀" then
					c1 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt c2' then
				if c2 == "⠀" then
					c2 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.fromRGB(163, 255, 169).value
						}
					}
				end
			end
			if message.content == ';ttt c3' then
				if c3 == "⠀" then
					c3 = "o"
					tttlast = 0
					message:reply {
						embed = {
							title = "tic tac toe",

							fields = { 
								{
									name = a1,
									value = "A1",
									inline = true
								},
								{
									name = a2,
									value = "A2",
									inline = true
								},
								{
									name = a3,
									value = "A3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = b1,
									value = "B1",
									inline = true
								},
								{
									name = b2,
									value = "B2",
									inline = true
								},
								{
									name = b3,
									value = "B3",
									inline = true
								},
								{
									name = "⠀",
									value = "⠀",
									inline = false
								},
								{
									name = c1,
									value = "C1",
									inline = true
								},
								{
									name = c2,
									value = "C2",
									inline = true
								},
								{
									name = c3,
									value = "C3",
									inline = true
								}
							},
							footer = {
								text = "Made by Many Foxes#7107"
							},
							color = discordia.Color.setBlue(163, 255, 169).value
						}
					}
				end
			end
		end
	end
end)

crash = 1
c = c
client:on('messageCreate', function(message)
	if message.content == ';crash' then
		if message.author.id == '412354487953653760' then
			crash = c
			message.channel:send(crash)
		end
	end
end)

client:on('messageCreate', function(message) --Checking who won. And auto reseting.
	if b1 == "x" then
		if b2 == "x" then
			if b3 == "x" then
				message.channel:send('X has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if a1 == "x" then
		if b2 == "x" then
			if c3 == "x" then
				message.channel:send('X has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	
	if a1 == "x" then
		if a2 == "x" then
			if a3 == "x" then
				message.channel:send('X has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if c1 == "x" then
		if b2 == "x" then
			if a3 == "x" then
				message.channel:send('X has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if a1 == "x" then
		if b1 == "x" then
			if c1 == "x" then
				message.channel:send('X has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	
	if a1 == "x" then
		if b1 == "x" then
			if c1 == "x" then
				message.channel:send('X has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if a2 == "x" then
		if b2 == "x" then
			if c2 == "x" then
				message.channel:send('X has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if a3 == "x" then
		if b3 == "x" then
			if c3 == "x" then
				message.channel:send('X has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if b1 == "o" then
		if b2 == "o" then
			if b3 == "o" then
				message.channel:send('O has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if a1 == "o" then
		if b2 == "o" then
			if c3 == "o" then
				message.channel:send('O has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	
	if a1 == "o" then
		if a2 == "o" then
			if a3 == "o" then
				message.channel:send('O has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if c1 == "o" then
		if b2 == "o" then
			if a3 == "o" then
				message.channel:send('O has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if a1 == "o" then
		if b1 == "o" then
			if c1 == "o" then
				message.channel:send('O has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	
	if a1 == "o" then
		if b1 == "o" then
			if c1 == "o" then
				message.channel:send('O has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if a2 == "o" then
		if b2 == "o" then
			if c2 == "o" then
				message.channel:send('O has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀"
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
	if a3 == "o" then
		if b3 == "o" then
			if c3 == "o" then
				message.channel:send('O has won!')
				o = 0
				x = 0
				a1 = "⠀"
				a2 = "⠀"
				a3 = "⠀" 
				b1 = "⠀"
				b2 = "⠀"
				b3 = "⠀"
				c1 = "⠀"
				c2 = "⠀"
				c3 = "⠀"
				tttlast = 0
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';roast' then
		local author = message.author
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time: '.. os.time())
		if state >= 1 then
			if message.author.id ~= ban then
				if message.author.id ~= ban1 then --Ban checking
					math.randomseed(os.time())
					math.random(5) --RNG to cuss you out
					if (math.random(5) == 1) then
						message.channel:send('you coded mee6')
					end
					if (math.random(5) == 2) then
						message.channel:send('im pretty gay, but i wouldnt date you')
					end
					if (math.random(5) == 3) then
						message.channel:send('god said let their be people, looked at you, then asked, "can we undo this?"')
					end
					if (math.random(5) == 4) then
						message.channel:send('and for my 1 million dollars, i would like to donate it to "people who looked at your ugly face united"')
					end
					if (math.random(5) == 5) then
						message.channel:send('you probobly bully people then post on twitter "be kind to everyone!"')
					end
				else
					message:reply('You are banned from using the bot. Please contact Many Foxes#7107 if you think this is a mistake.')
				end
			end
		end
	end
end)



client:on('messageCreate', function(message)
	--[[
	if message.author.id == "159985870458322944" then --Mee6 ID
		math.randomseed(os.time())
		math.random(5) --RNG to cuss out mee6
		if (math.random(5) == 1) then
			message.channel:send('youre probobly coded in blocky code mee6')
		end
		if (math.random(5) == 2) then
			message.channel:send('mee6? more like HATEmee6.')
		end
		if (math.random(5) == 3) then
			message.channel:send('god said let their be level up bots, then looked at mee6 and said "ew no"')
		end
		if (math.random(5) == 4) then
			message.channel:send('and for my 1 million dollars, i would like to donate it to "people raped by mee6 united"')
		end
		if (math.random(5) == 5) then
			message.channel:send('the only people that add you to their server are people trying to show the server owner they are a good mod, nobody will ever love you mee6 abd thats good.')
		end
	end
	--]]
end)

client:on("messageCreate", function(message)
	if state >= 1 then
		if message.content == ";fox" then
			message.channel:send {
				embed = {
					title = "Foxes are the collest animal. Just look at my founders name",
					description = "foxes are sadly better then me :(((",
					color = discordia.Color.fromRGB(235, 192, 0).value
				}
			}
			message:addReaction('🦊')
		end
		if message.content == ";pride" then
			message.channel:send {
				embed = {
					title = "Pride month has been extended until further notice",
					description = "imagine being scared of gay people",
					color = discordia.Color.fromRGB(221, 181, 247).value
				}
			}
			message:addReaction('🏳️‍🌈')
		end
		if message.content == ";cat" then
			message.channel:send {
				embed = {
					title = "Cats > rats",
					description = "ew rats are straight",
					color = discordia.Color.fromRGB(199, 199, 199).value
				}
			}
			message:addReaction('🐱')
		end
		if message.content == ";crab" then
			message.channel:send {
				embed = {
					title = "Crabs are coolio!",
					description = "(pls dont spam them unless your strajiu)",
					color = discordia.Color.fromRGB(252, 79, 76).value
				}
			}
			message:addReaction('🦀')
		end
		if message.content == ";samuel" then
			message.channel:send {
				embed = {
					title = "i want samuel back :CCCC",
					description = "samuel was better then all of you. i have no point of living without him",
					color = discordia.Color.fromRGB(250, 128, 114).value
				}
			}
			message:addReaction('🐟')
		end
	end
end)
--samuel
emoji = 0
react = 0
client:on('messageCreate', function(message)
	if message.author.id == "412354487953653760" then
		if message.content == ";emoji on" then
			emoji = 1
		end
		if message.content == ";emoji off" then
			emoji = 0
		end
		if message.content:sub(1,6) == ";react" then
			reaction = message.content:sub(8,8)
			react = 1
		end
		if message.content == ";r off" then
			react = 0
		end
	end
	if emoji == 1 then
		message:addReaction('🏳️‍🌈')
		message:addReaction('🦀')
		message:addReaction('🦊')
	end
	if react == 1 then
		message:addReaction(reaction)
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';meme' then
		print('Username: '.. message.author.username.. ', ID: '.. message.author.id.. ', Command: '.. message.content.. ', Server: '.. message.guild.name.. ', Time:'.. os.time())
		math.randomseed(os.time())
		math.random()
		if (math.random() <= 0.0625) then
			message.channel:send('https://cdn.discordapp.com/attachments/828455828993474580/828471501615267850/Kitchen_without_gun.mp4')
		elseif (math.random() <= 0.125) then
			message.channel:send('https://cdn.discordapp.com/attachments/827217460830011449/828422684764536832/video0_23-1.mp4')
		elseif (math.random() <= 0.1875) then
			message.channel:send('https://cdn.discordapp.com/attachments/680928395399266314/821808177716658236/cyacop.mp4')
		elseif (math.random() <= 0.25) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828579454644912159/ff16ea8f0a9ee66aef35a1448cabce78.mp4')
		elseif (math.random() <= 0.3125) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828581075332759573/image0-4.jpg')
		elseif (math.random() <= 0.375) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828525585194156071/video0.mp4')
		elseif (math.random() <= 0.4375) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828520104685207622/f24a2260f2eea9c261b443948e6ae6a1_1.mp4')
		elseif (math.random() <= 0.5) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828447722914447360/Screenshot_20200929-1614491.png')
		elseif (math.random() <= 0.5625) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828439327390040064/video0.mp4')
		elseif (math.random() <= 0.625) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828439672627527700/video0.mov')
		elseif (math.random() <= 0.6875) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828384608549601300/video0.mp4')
		elseif (math.random() <= 0.75) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828321754204209222/video0.mp4')
		elseif (math.random() <= 0.8125) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828307518652416000/2020_lmaoo.mp4')
		elseif (math.random() <= 0.875) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828266219329028116/image0.jpg')
		elseif (math.random() <= 0.9375) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828176562025136138/image0.jpg')
		elseif (math.random() <= 1) then
			message.channel:send('https://cdn.discordapp.com/attachments/827507860740636672/828160354622111744/B5CB64E7-3ABB-40D2-99E8-0060EBF5266D.jpeg')
		else
			message.cannel:send('either something terrible happend or your lucky as hell. that was a 0.001% chance of you seeing this!')
		end
	end
end)
-- here you are buddy! elseif (math.random() <= ) then
client:on('messageCreate', function(message)
	if message.content == ';donate' then
		message.channel:send('Buy me a maid outfit\nhttps://www.amazon.com/hz/wishlist/ls/208UZBWR42JDH?ref_=wl_share')
	end
end)


client:run('Bot YourBotKey')
