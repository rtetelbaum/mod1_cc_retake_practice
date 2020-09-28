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
		MenuItem.all.find_all { |menu_item| menu_item.recipe == self }
	end

	def restaurants
		self.menu_items.collect { |menu_item| menu_item.restaurant }
	end

	def average_price
		prices = self.menu_items.collect { |menu_item| menu_item.price }
		avg = prices.sum / prices.size
		avg.to_i
	end

	def highest_price
		prices = self.menu_items.collect { |menu_item| menu_item.price }
		prices.max.to_i
	end

	def lowest_price
		prices = self.menu_items.collect { |menu_item| menu_item.price }
		prices.min
	end

	def cheapest_restaurant
		lowest = self.lowest_price
		lowest_menu_item = self.menu_items.find { |menu_item| menu_item.price == lowest }
		lowest_menu_item.restaurant
	end

	def self.inactive
		inactive = []
		self.all.each do |r|
			inactive << r if r.menu_items == []
		end
		inactive
	end
end