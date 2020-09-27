def MenuItem
	attr_accessor :price
	attr_reader :restaurant, :recipe

	@@all = []

	def initialize(restaurant, recipe, price)
		@restaurant = restaurant
		@recipe = recipe
		@price = price
		@@all << self
	end

	def self.all
		@@all
	end

	def owner
		self.restaurant.owner
	end
end