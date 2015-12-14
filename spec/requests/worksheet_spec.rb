require 'rails_helper'

RSpec.describe 'worksheet', type: :request do
  let(:worksheet){ Worksheet.create({title: 'test'})}
  let(:factory){ Factory.create({name: 'test_factory'})}

  it 'gets an index' do
    host! 'localhost'
    get '/worksheets'
    expect(response.status).to eq 200
    expect(response.body).to_not be_empty
    expect(response.content_type).to eq("application/json")
  end

  it 'gets an show' do
    host! 'localhost'
    get "/worksheets/#{worksheet.id}"
    expect(response.status).to eq 200
    expect(response.body).to_not be_empty
    expect(response.content_type).to eq("application/json")
  end

  it 'post to worksheets' do
    host! 'localhost'
    post "/worksheets/", :worksheet => {title: 'title', factory_id: factory.id }
    expect(response.status).to eq 200
    expect(response.body).to_not be_empty
    expect(response.content_type).to eq("application/json")
  end
end
