require "Tamagotchi"
require "rspec"
require "pry"

describe 'Tamagotchi' do
  describe("#initialize") do
  it "sets the name and life stats of new Tamagotchi" do
    my_pet = Tamagotchi.new("chipmunk",10,10,10)
    expect(my_pet.name()).to(eq("chipmunk"))
    expect(my_pet.food_stats()).to(eq(10))
    expect(my_pet.snooze_stats()).to(eq(10))
    expect(my_pet.activity_stats()).to(eq(10))
    end
  end

  describe("#alive") do
    it("is alive if food stats are above 0") do
      my_pet = Tamagotchi.new("chipmunk",10,10,10)
      expect(my_pet.alive()).to(eq(true))
    end
    it("is dead if food stats are 0") do
      my_pet = Tamagotchi.new("chipmunk",0,10,10)
      expect(my_pet.alive()).to(eq(false))
    end
  end

end
