require 'rails_helper'

RSpec.describe 'Foods', type: :request do
    describe 'GET /foods' do
       it 'should redirect to login page' do
              get foods_path
              expect(response).to redirect_to(new_user_session_path)
         end
    end
end