require('rspec')
require('tama')
require('pry')

describe ("Tama") do
  describe("#initialize") do
    it("sets pet name and starting pet stats") do
      my_pet = Tama.new("fido")
      expect(my_pet.name()).to(eq("fido"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#time_passes") do
    it("reduces tama food by 1") do
      my_pet = Tama.new("fido")
      my_pet.time_passes()
      expect(my_pet.time_passes()).to(eq(9))
    end
  end

  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      my_pet = Tama.new("fido")
      expect(my_pet.is_alive?()).to(eq(true))
    end
  end
end
