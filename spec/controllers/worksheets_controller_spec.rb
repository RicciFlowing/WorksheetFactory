require 'rails_helper'

RSpec.describe WorksheetsController, type: :controller do
  let(:factory){ Factory.create({name: "test"}) }
  let(:group){ Group.create({name: 'test_factory', factory: factory})}

  describe 'create' do
    it "assigns @worksheet" do
     factory   = Factory.create({name: 'test'})
     post :create, {worksheet: {name: 'worksheet_test', group_id: group.id}}
     expect(assigns(:worksheet))
     expect(assigns(:worksheet).questions).to_not be nil
   end
  end

end
