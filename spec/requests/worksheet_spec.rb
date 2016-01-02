require 'rails_helper'

RSpec.describe 'worksheet', type: :request do
  let(:worksheet){ Worksheet.create({title: 'test'})}
  let(:factory){ Factory.create({name: 'test_factory'}) }
  let(:group){ Group.create({name: 'test_factory', factory: factory})}

  it 'gets an index' do
    host! 'localhost'
    get '/worksheets'
    expect(response.status).to eq 200
    expect(response.body).to_not be_empty
  end

  it 'gets an show' do
    host! 'localhost'
    get "/worksheets/#{worksheet.id}"
    expect(response.status).to eq 200
    expect(response.body).to_not be_empty
  end

  it 'post to worksheets' do
    host! 'localhost'
    post "/worksheets/", :worksheet => {title: 'title', group_id: group.id }
    expect(response.status).to eq 200
    expect(response.body).to_not be_empty
  end
end
