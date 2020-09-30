class Restaurant
	attr_accessor :name, :star_rating, :owner

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
		MenuItem.all.find_all { |mi| mi.restaurant == self }
	end

	def recipes
		self.menu_items.collect { |mi| mi.recipe }
	end

	def has_dish?(recipe)
		self.recipes.include?(recipe)
	end

	def self.highest_rated
		self.all.max_by { |restaurant| restaurant.star_rating }
	end
end