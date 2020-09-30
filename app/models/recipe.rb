class Recipe
	attr_reader :name
	attr_accessor :description

	@@all = []

	def initialize(name, description)
		@name = name
		@description = description
		@@all << self
	end

	def self.all
		@@all
	end

	def menu_items
		MenuItem.all.find_all { |mi| mi.recipe == self }
	end

	def restaurants
		self.menu_items.collect { |mi| mi.restaurant }
	end

	def average_price
		prices = self.menu_items.collect { |mi| mi.price }
		avg = prices.sum / prices.size
		avg.to_i
	end

	def highest_price
		highest = self.menu_items.max_by { |mi| mi.price }
		highest.to_i
	end

	def cheapest_resaturant
		mi = self.menu_items.min_by { |mi| mi.price }
		mi.restaurant
	end

	def self.inactive
		inactive_recipes = []
		self.all.each do |recipe|
			inactive_recipes << recipe if recipe.menu_items == []
		end
		inactive_recipes
	end
end