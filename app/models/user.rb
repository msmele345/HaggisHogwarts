class User < ApplicationRecord

  has_secure_password



	has_many :recipes, foreign_key: :chef_id
	has_many :categories, through: :recipes

  validates :first_name, :last_name, :email, presence: true

end

