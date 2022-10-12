class Inventori < ApplicationRecord
  belongs_to :user
  has_many :inventory_foods, dependent: :destroy , foreign_key: 'inventory_id'
end
