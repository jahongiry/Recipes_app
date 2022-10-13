require 'rails_helper'


RSpec.describe 'InventoryFoods', type: :request do

    describe 'GET /inventory_foods' do
        it 'should redirect to login page' do
        get '/inventory_foods/:4/new'
        expect(response).to redirect_to(new_user_session_path)
        end
    end
    
    end