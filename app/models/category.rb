class Category < ApplicationRecord

	has_many :recipes
	has_many :chefs, through: :recipes

end
