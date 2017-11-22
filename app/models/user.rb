class User < ApplicationRecord

	has_many :recipes, foreign_key: :chef_id
	has_many :categories, through: :recipes

end

