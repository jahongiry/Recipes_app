require 'rails_helper'

RSpec.describe Inventori, type: :model do
  before(:each) do
    @user = User.create(name: 'User', email: '123@gmail.com', password: '123456', password_confirmation: '123456')
    @inventori = Inventori.create(name: 'Inventori', description: 'Description', user: @user)
  end

  describe 'validations' do
    it 'is not valid without a name' do
      expect(Inventori.new).to_not be_valid
    end

    it 'is valid with a name' do
      @inventori.name = 'Inventori'
      expect(@inventori).to be_valid
    end
  end

  describe 'associations' do
    it 'should belong to user' do
      i = described_class.reflect_on_association(:user)
      expect(i.macro).to eq :belongs_to
    end

    it 'should have many inventory_foods' do
      i = described_class.reflect_on_association(:inventory_foods)
      expect(i.macro).to eq :has_many
    end
  end
end
