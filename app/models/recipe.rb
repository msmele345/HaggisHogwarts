class Recipe < ApplicationRecord

	belongs_to :chef, class_name: "User"
	belongs_to :category
	has_many	:ingredients

end
