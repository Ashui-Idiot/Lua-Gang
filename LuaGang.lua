local discordia = require("discordia") 
local client = discordia.Client() 

client:on('ready', function() 
	print('Im on under the user '.. client.user.username) 
end) 

state = 1
client:on('messageCreate', function(message)
	if message.content == ';off' then
		state = state-1
		print('Bot Off')
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';on' then
		state = state +1
		print('Bot On')
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';state' then
		message.channel:send(state)
		print(state)
	end
end)


client:on('messageCreate', function(message)
	if message.content == ';help' then
		if state >= 1 then
			print('state check done')
			message.channel:send('```bash\n"Welcome to the Lua Gang bot"\n"Commands"\n";cf - Flips a coin"\n";help - Shows this menu"\n"One super secret command meant to test if the bot is on"\n";say (arg) - Not working yet, being troubleshooted"\n"Other info:"\n"Sometimes in the CF command it doesnt read a command so next time it does it it prints both, just use the command a couple times to fix it." Made by Many Foxes#7107 ```')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';cf' then
		if state >= 1 then
			print('state check done')
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
	if message.content == ';test' then
		if state >= 1 then
			print('state check done')
			message.channel:send('```you found the super duper secret command```')
		end
	end
end)

client:on('messageCreate', function(message)
	if message.content == ';db' then
		if state >= 1 then
			print('state check done')
			message.channel:send('.tell get double botted')
		end
	end
end)

client:run('Bot YourBotKey')