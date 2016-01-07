require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  let(:factory){ Factory.create({name: 'test'}) }

  describe 'create' do
    it "assigns @group" do
     post :create, {group: {name: 'group_test', factory_id: factory.id}}
     expect(assigns(:group))
   end
  end

  describe 'create' do
    it "assigns @group" do
      group = Group.create(name:'to_be_deleted')
     expect{ delete :destroy, id: group.id}.to change(Group, :count).by -1
   end
  end

end
