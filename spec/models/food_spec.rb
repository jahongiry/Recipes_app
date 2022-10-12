require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'validations' do
    it 'is not valid without a name' do
      expect(Food.new).to_not be_valid
    end

    it 'is valid with a name' do
      expect(Food.new(name: 'Food')).to be_valid
    end 
  end
end