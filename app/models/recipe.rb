class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :quantities
  has_many :ingredients, through: :quantities
end
