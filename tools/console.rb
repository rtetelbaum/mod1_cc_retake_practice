# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

recipe1 = Recipe.new("borscht", "soup")
recipe2 = Recipe.new("ciabatta", "bread")
recipe3 = Recipe.new("tacos al pastor", "taco")
recipe4 = Recipe.new("tacos al pastor", "taco")

owner1 = RestaurantOwner.new("Roman", 37)
owner2 = RestaurantOwner.new("Wes", 39)
owner3 = RestaurantOwner.new("Erik", 25)

rest1 = Restaurant.new(owner1, "Hooters", 5)
rest2 = Restaurant.new(owner2, "Slingers", 4)
rest3 = Restaurant.new(owner3, "Fridays", 3)

item1 = MenuItem.new(rest1, recipe1, 6)
item2 = MenuItem.new(rest2, recipe1, 7)
item3 = MenuItem.new(rest3, recipe2, 2)
item4 = MenuItem.new(rest2, recipe2, 3)
item5 = MenuItem.new(rest1, recipe3, 12)
item6 = MenuItem.new(rest3, recipe3, 11)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
