require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  let!(:user) { FactoryBot.create(:user, email: "ashar@gmail.com") }

  before do
    allow(request.env['warden']).to receive(:authenticate!).and_return(user)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe "POST #create" do
    it "success" do
      params = {content: "Live chat!"}
      expect { post :create, params: { message: params } }.to have_broadcasted_to("room_channel").with( msg: "Live chat!", user: "ashar", type: 'chat' )
    end
  end

end
