def Restaurant
	attr_reader :owner
	attr_accessor :name, :star_rating

	@@all = []

	def initialize(owner, name, star_rating)
		@owner = owner
		@name = name
		@star_rating = star_rating
		@@all << self
	end

	def self.all
		@@all
	end

	def menu_items
		MenuItem.all.find_all { |menu_item| menu_item.restaurant == self }
	end

	def recipes
		self.menu_items.collect { |menu_item| menu_item.recipe }
	end
end