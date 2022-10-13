require 'rails_helper'

RSpec.describe 'Inventories', type: :request do
  describe 'GET /inventories' do
    it 'check user Sign_Up ' do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end

    it 'check user Sign_In ' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end
  end
end
