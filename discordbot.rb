require 'discordrb'

bot = Discordrb::Bot.new token:"YOUR BOT TOKEN", client_id: #your client id
bot.ready do |_|
  bot.dnd
  bot.profile.name = "Oswin's ruby bot"
end

bot.message(with_text: '!ping') do |event|
  event.respond "Pong #{event.user.name}"
end

bot.message(with_text:"!help") do |event|
  event.respond "Check your dms! #{event.user.name}"
  event.user.pm("This is my first discord bot WIP coded in ruby check out my github! https://github.com/codingoswin")
end

bot.run



