class Tamagotchi

  define_method(:initialize) do |name|
    @name = ""
    @food = 10
    @snooze = 10
    @activity = 10
  end



  define_method(:name) do
    @name
  end

  define_method(:food_stats) do
    @food
  end

  define_method(:set_food_level) do |stat|
    @food = stat
  end

  define_method(:feed_it) do
    @food += 3
    if @food >= 10
      @food = 10
    end
  end

  define_method(:snooze_stats) do
    @snooze
  end

  define_method(:nap_time) do
    @snooze +=3
    if @snooze >= 10
      @snooze = 10
    end
  end

  define_method(:activity_stats) do
    @activity
  end

  define_method(:work_out) do
    @activity += 3
    if @activity >= 10
      @activity = 10
    end
  end

  define_method(:alive) do
    if @food >= 1
      return true
    else
      return false
    end
  end

  define_method(:time_passes) do
    @food -= 1 & @snooze -= 1 & @activity -= 1
  end
end
