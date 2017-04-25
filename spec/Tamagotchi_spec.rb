require "Tamagotchi"
require "rspec"
require "pry"

describe 'Tamagotchi' do
  describe("#initialize") do
  it "sets the name and life stats of new Tamagotchi" do
    my_pet = Tamagotchi.new("chipmunk")
    expect(my_pet.name()).to(eq("chipmunk"))
    expect(my_pet.food_stats()).to(eq(10))
    expect(my_pet.snooze_stats()).to(eq(10))
    expect(my_pet.activity_stats()).to(eq(10))
    end
  end

  describe("#alive") do
    it("is alive if food stats are above 0") do
      my_pet = Tamagotchi.new("chipmunk")
      expect(my_pet.alive()).to(eq(true))
    end
    it("is dead if food stats are 0") do
      my_pet = Tamagotchi.new("chipmunk")
      my_pet.set_food_level(0)
      expect(my_pet.alive()).to(eq(false))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has by 1") do
      my_pet = Tamagotchi.new("chipmunk")
      my_pet.time_passes()
      expect(my_pet.food_stats()).to(eq(9))
      expect(my_pet.snooze_stats()).to(eq(9))
      expect(my_pet.activity_stats()).to(eq(9))
    end
  end

    describe("#feed_it") do
      it("increases the amount of food the Tamagotchi has by 3") do
        my_pet = Tamagotchi.new("chipmunk")
        my_pet.set_food_level(6)
        my_pet.feed_it()
        expect(my_pet.food_stats()).to(eq(9))
      end
    end

    describe("#nap_time") do
      it("increases the amount of snooze stats the Tamagotchi has by 3") do
        my_pet = Tamagotchi.new("chipmunk")
        my_pet.nap_time()
        expect(my_pet.snooze_stats()).to(eq(10))
      end
    end

    describe("#work_out") do
      it("increases the amount of activity stats the Tamagotchi has by 3") do
        my_pet = Tamagotchi.new("chipmunk")
        my_pet.work_out()
        expect(my_pet.activity_stats()).to(eq(10))
      end
    end
end
