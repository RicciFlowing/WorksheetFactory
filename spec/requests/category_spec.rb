require 'rails_helper'

RSpec.describe 'Category', type: :request do
  it 'gets an index' do
    host! 'localhost'
    get '/categories'
    expect(response.status).to eq 200
    expect(response.body).to_not be_empty
    expect(response.content_type).to eq("application/json")
  end
end
