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
		Restaurant.all.find_all { |r| r.owner == self }
	end

	def menu_items
		MenuItem.all.find_all { |mi| mi.owner == self }
	end

	def self.average_age
		ages = self.all.collect { |ro| ro.age }
		ages.sum / ages.size
	end

	def sell_restaurant(restaurant, buyer)
		restaurant.owner = buyer if restaurant.owner == self
	end
end