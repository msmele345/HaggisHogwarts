class Ingredient < ApplicationRecord

	belongs_to :recipe
	belongs_to :measurement

end
