class Ingredient < ApplicationRecord

	belongs_to :recipe, optional: true
	belongs_to :measurment, optional: true

end
