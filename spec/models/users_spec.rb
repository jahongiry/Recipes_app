require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    before(:each) do
      @user = User.new(name: 'user', email: '123@gmail.com', password: '123456')
    end

    it 'is not valid without a name' do
      expect(@user).to be_valid
    end

    it 'is not valid without a name' do
      @user.name = nil
      expect(@user).to_not be_valid
    end
  end
end
