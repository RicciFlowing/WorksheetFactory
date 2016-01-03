require 'rails_helper'

RSpec.describe SkillsController, type: :controller do
  let(:skill){ Skill.create({name: "test"}) }

  describe 'show' do
    it "assigns @skill" do
     get :show, {id: skill.id}
     expect(assigns(:skill))
   end
  end

  describe 'index' do
    it "assigns @skills" do
     get :index
     expect(assigns(:skills))
   end
  end

end
