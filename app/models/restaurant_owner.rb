class RestaurantOwner
	attr_accessor :name, :age

	@@all = []

	def initialize(name, age)
		@name = name
		@age = age
		@@all << self
	end

	def self.all
		@@all
	end

	def restaurants
		Restaurant.all.find_all { |restaurant| restaurant.owner == self }
	end

	def menu_items
		self.restaurants.collect { |restaurant| restaurant.menu_items }
	end

	def self.average_age
		ages = self.all.collect { |owner| owner.age }
		ages.sum / ages.size
	end

	def sell_restaurant(restaurant, buyer)
		r_to_sell = self.restaurants.find { |r| r == restaurant }
		r_to_sell.owner = buyer
	end
end