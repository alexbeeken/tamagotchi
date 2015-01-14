require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tama")

get('/') do
  @tama = Tama.new("Tamagotchi")
  erb(:index)
end

post('/feed') do
  @tama.set_food_level(1)
  erb(:index)
end

post('/sleep') do
  @tama.set_sleep_level(1)
  erb(:index)
end

post('/play') do
  @tama.set_activity_level(1)
  erb(:index)
end
