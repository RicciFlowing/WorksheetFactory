require 'rails_helper'

RSpec.describe FactoriesController, type: :controller do
  let(:skill){ Skill.create({name: 'test'}) }
  describe 'create' do
    it "assigns @factory" do
     post :create, {factory: {name: 'factory_test', skill_id: skill.id}}
     expect(assigns(:factory))
   end
  end
end
