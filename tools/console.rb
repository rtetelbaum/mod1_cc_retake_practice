# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

recipe1 = Recipe.new("apple pie", "a pie with apples in it")
recipe2 = Recipe.new("cherry pie", "a pie with cherries in it")
recipe3 = Recipe.new("pecan pie", "a pie with pecans in it")
recipe4 = Recipe.new("peach pie", "a pie with peaches in it")
recipe5 = Recipe.new("meat pie", "a pie with meat in it")
recipe6 = Recipe.new("bleh pie", "you don't want this pie")

owner1 = RestaurantOwner.new("Roman", 37)
owner2 = RestaurantOwner.new("Wes", 39)
owner3 = RestaurantOwner.new("Bob", 60)

restaurant1 = Restaurant.new(owner1, "Pies & Thies", 4)
restaurant2 = Restaurant.new(owner2, "All About Pies", 5)
restaurant3 = Restaurant.new(owner3, "Pies Pies Pies!", 3)

menu_item_1 = MenuItem.new(restaurant1, recipe1, 20.0)
menu_item_2 = MenuItem.new(restaurant1, recipe2, 5.0)
menu_item_3 = MenuItem.new(restaurant2, recipe1, 6.0)
menu_item_4 = MenuItem.new(restaurant3, recipe3, 4.0)
menu_item_5 = MenuItem.new(restaurant3, recipe3, 4.25)
menu_item_6 = MenuItem.new(restaurant2, recipe4, 5.5)
menu_item_7 = MenuItem.new(restaurant1, recipe5, 6.0)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
