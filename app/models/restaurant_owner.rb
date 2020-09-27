def RestaurantOwner
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
end