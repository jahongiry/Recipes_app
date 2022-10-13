require 'rails_helper'

RSpec.describe 'Foods', type: :feature do
    before(:each) do
        @user = User.create(name: 'Test User', email: '123@gmail.com', password: '123456' , password_confirmation: '123456')
        @food = Food.create(name: 'Test Food', measurement_unit: 'quntal' , price: 1.00, user_id: @user.id)
    end

    it 'is valid with a name' do
        expect(@food.name).to eq('Test Food')
    end

    it 'is valid with a measurement_unit' do
        expect(@food.measurement_unit).to eq('quntal')
    end

    it 'is valid with a price' do
        expect(@food.price).to eq(1.00)
    end

    it 'is valid with a user_id' do
        expect(@food.user_id).to eq(@user.id)
    end
end