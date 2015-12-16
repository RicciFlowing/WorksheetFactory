require 'rails_helper'

RSpec.describe WorksheetsController, type: :controller do
  describe 'create' do
    it "assigns @worksheet" do
     factory   = Factory.create({name: 'test'})
     post :create, {worksheet: {name: 'worksheet_test', factory_id: factory.id}}
     expect(assigns(:worksheet))
     expect(assigns(:worksheet).questions).to_not be nil
   end
  end

end
