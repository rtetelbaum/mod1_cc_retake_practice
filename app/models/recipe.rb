def Recipe
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
end