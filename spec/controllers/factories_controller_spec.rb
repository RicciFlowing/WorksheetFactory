require 'rails_helper'

RSpec.describe FactoriesController, type: :controller do
  describe 'create' do
    it "assigns @factory" do
     post :create, {factory: {name: 'factory_test'}}
     expect(assigns(:factory))
   end
  end
end
