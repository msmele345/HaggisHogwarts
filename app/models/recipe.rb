class Recipe < ApplicationRecord

	belongs_to :chef, class_name: "User", optional: true
	belongs_to :category, optional: true
	has_many	:ingredients

end
