require 'rails_helper'

RSpec.describe InventoryFood, type: :model do
  before(:each) do
    @user = User.create(name: 'User', email: '123@gmail.com', password: '123456', password_confirmation: '123456')
    @inventori = Inventori.create(name: 'Inventori', description: 'Description', user: @user)
    @food = Food.create(name: 'Food', measurement_unit: 'kg', price: 1.0, user: @user)
    @inventory_food = InventoryFood.create(inventori: @inventori, food: @food, quantity: 1.0)
  end

  describe 'validations' do
    it 'is not valid without a quantity' do
      expect(InventoryFood.new).to_not be_valid
    end

    it 'is valid with a quantity' do
      @inventory_food.quantity = 1.0
      expect(@inventory_food).to be_valid
    end
  end

  describe 'associations' do
    it 'should belong to inventori' do
      i = described_class.reflect_on_association(:inventori)
      expect(i.macro).to eq :belongs_to
    end

    it 'should belong to food' do
      i = described_class.reflect_on_association(:food)
      expect(i.macro).to eq :belongs_to
    end
  end
end
