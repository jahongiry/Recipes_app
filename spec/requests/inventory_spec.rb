require 'rails_helper'

RSpec.describe 'Inventories', type: :request do
  describe 'GET /inventories' do
    it 'should redirect to login page' do
      get inventoris_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
