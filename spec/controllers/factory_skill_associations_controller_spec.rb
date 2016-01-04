require 'rails_helper'

RSpec.describe FactorySkillAssociationsController, type: :controller do
  let(:skill){ Skill.create({name: 'test'}) }
  let(:factory){ Factory.create({name: 'test'}) }

  describe 'create' do
    it "assigns @association" do
     post :create, {factory_skill_association: {factory_id: factory.id, skill_id: skill.id}}
     expect(assigns(:association))
   end
  end
end
