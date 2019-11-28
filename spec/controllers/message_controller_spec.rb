require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "POST #create" do
    it "success" do
      params = {content: "Live chat!"}
      expect { post :create, params: { message: params } }.to have_broadcasted_to("room_channel").with( msg: "Live chat!" )
    end
  end

end
