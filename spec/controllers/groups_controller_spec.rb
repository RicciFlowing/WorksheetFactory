require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  let(:group){ Group.create({name: 'test'}) }
  # describe 'create' do
  #   it "assigns @group" do
  #    group   = Group.create({name: 'test'})
  #    post :create, {group: {name: 'group_test', group_id: group.id}}
  #    expect(assigns(:group))
  #  end
  # end
end
