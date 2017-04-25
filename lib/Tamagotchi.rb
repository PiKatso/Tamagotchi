class Tamagotchi

define_method(:initialize) do |name,food,snooze,activity|
  @name = name
  @food = food
  @snooze =snooze
  @activity = activity
end

define_method(:name) do
  @name
end

define_method(:food_stats) do
  @food
end

define_method(:snooze_stats) do
  @snooze
end

define_method(:activity_stats) do
  @activity
end

end
