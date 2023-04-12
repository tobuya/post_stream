require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/index'
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      get '/users/index'
      expect(response).to render_template(:index)
    end

    it 'response body includes the correct placeholder text' do
      get '/users/index'
      result = response.body
      expect(result).to include('Users by index')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/users/show'
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      get '/users/show'
      expect(response).to render_template(:show)
    end

    it 'response body includes the correct placeholder text' do
      get '/users/show'
      result = response.body
      expect(result).to include('Here is a list of all Users')
    end
  end
end
