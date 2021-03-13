local discordia = require("discordia") 
local client = discordia.Client() 

client:on('ready', function() 
	print('Im on under the user '.. client.user.username) 
end) 

state = 1
client:on('messageCreate', function(message)
	if message.content == ';off' then
		if message.author.id == "412354487953653760" then
			state = state -1
			print('Bot Off')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';on' then
		if message.author.id == "412354487953653760" then
			state = state +1
			print('Bot On')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';state' then
		print(state)
	end
end)

if state >= 1 then
	state = state -1
end

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author
	if state >= 1 then
		if content == ";bots" then
			print(author)
			message:reply {
				embed = {
					title = "Bots",
					description = "null",
					author = {
						name = author.username,
						icon_url = author.avatarURL
					},
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
		end
	end
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author
	if state >= 1 then
		if content == ";hotline" then
			print(author)
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
							value = "Somebody out their somewhere loves you, dont kill youself, if you are thinking about it call somebody or the hotlin. Please do.",
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
		if content == ";help" then
			print(author)
			message:reply {
				embed = {
					title = "Commands",
					description = "List of commands",
					author = {
						name = author.username,
						icon_url = author.avatarURL
					},
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
						}
					},
					footer = {
						text = "Made by Many Foxes#7107"
					},
					color = discordia.Color.fromRGB(0, 217, 155).value
				}
			}
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';cf' then
		if state >= 1 then
			local author = message.author
			print(author)
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
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';lottery' then
		local author = message.author
		print(author)
		if state >= 1 then
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
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';dupe' then
		local author = message.author
		print(author)
		if state >= 1 then
			message.channel:send('stop asking if their is a dupe its anoying as hell.')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content:sub(1,5) == ';zelk' then
		local author = message.author
		print(author)
		if state >= 1 then
			message.channel:send('FUCK YOU BABY ZELK!')
			message.channel:send(':regional_indicator_f: :regional_indicator_u: :regional_indicator_c: :regional_indicator_k: :blue_square: :regional_indicator_y: :regional_indicator_o: :regional_indicator_u: :blue_square: :regional_indicator_z: :regional_indicator_e: :regional_indicator_l: :regional_indicator_k: ')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';hug' then
		local author = message.author
		print(author)
		if state >= 1 then
			message.channel:send('<(^-^<) Hug!')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';update' then
		local author = message.author
		print(author)
		if state >= 1 then
			message.channel:send('```diff\nUpdates\n--Added ;say. Check ;help for more info\n--Added Roast. Check ;help for more info\n--Added ;bots command. Only for personal use mainly\n--Added hotline. Check ;help\n--Added ;lottery. Check ;help```')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';test' then
		local author = message.author
		print(author)
		if state >= 1 then
			message.channel:send('```you found the super duper secret command```')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content:sub(1,4) == ';say' then
		local author = message.author
		print(author)
		local msg = message.content:sub(6,5006)
		if state >= 1 then
			message.channel:send(msg)
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';db' then
		local author = message.author
		print(author)
		if state >= 1 then
			message.channel:send('.tell get double botted')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';roast' then
		local author = message.author
		print(author)
		if state >= 1 then
			math.randomseed(os.time())
			math.random(5)
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
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author.id == "159985870458322944" then
		math.randomseed(os.time())
		math.random(5)
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
end)
client:run('Bot YourBotKey')
