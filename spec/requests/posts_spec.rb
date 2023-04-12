require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/posts/index'
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      get '/posts/index'
      expect(response).to render_template(:index)
    end

    it 'response body includes the correct placeholder text' do
      get '/posts/index'
      result = response.body
      expect(result).to include('Here is a list of posts for a given User')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/posts/show'
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      get '/posts/show'
      expect(response).to render_template(:show)
    end

    it 'response body includes the correct placeholder text' do
      get '/posts/show'
      result = response.body
      expect(result).to include('Here is a list of all posts')
    end
  end
end
