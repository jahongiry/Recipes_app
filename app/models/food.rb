class Food < ApplicationRecord
  #   has_many :recipe_food, dependent: :destroy
  #   has_many :inventory_food, dependent: :destroy
  belongs_to :user, foreign_key: 'user_id'
  has_many :inventory_foods, dependent: :destroy, foreign_key: 'food_id'
end
