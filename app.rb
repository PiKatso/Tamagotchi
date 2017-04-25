require 'sinatra'
require 'sinatra/reloader'
require './lib/Tamagotchi'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/tamagotchi_form') do
  @name = params.fetch('name')
  @@new_pet = Tamagotchi.new(@name)
  @show_food = @@new_pet.food_stats
  @show_snooze = @@new_pet.snooze_stats
  @show_activity = @@new_pet.activity_stats
  @message = "welcome to the world " + @name + "!"
  # @end_game = "I'm sorry, your a bad pet owner. " + @name + " is no more"
  erb(:play)
end

post('/feed_it') do
    @show_food = @@new_pet.food_stats
    @show_snooze = @@new_pet.snooze_stats
    @show_activity = @@new_pet.activity_stats
      if @@new_pet.alive == true
      @@new_pet.time_passes
      @@new_pet.feed_it
      else
        @end_game
      end
  erb(:play)
end

post('/nap_time') do
    @show_food = @@new_pet.food_stats
    @show_snooze = @@new_pet.snooze_stats
    @show_activity = @@new_pet.activity_stats
      if @@new_pet.alive == true
      @@new_pet.time_passes
      @@new_pet.nap_time
      else
        "I'm sorry, your a bad pet owner. " + @name + " is no more"
      end
  erb(:play)
end
#
post('/work_out') do
    @show_food = @@new_pet.food_stats
    @show_snooze = @@new_pet.snooze_stats
    @show_activity = @@new_pet.activity_stats
      if @@new_pet.alive == true
      @@new_pet.time_passes
      @@new_pet.work_out
      else
        "I'm sorry, your a bad pet owner. " + @name + " is no more"
      end
  erb(:play)
end
