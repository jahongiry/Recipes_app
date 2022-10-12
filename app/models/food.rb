class Food < ApplicationRecord
  #   has_many :recipe_food, dependent: :destroy
  #   has_many :inventory_food, dependent: :destroy
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods
  belongs_to :user, foreign_key: 'user_id'
end
