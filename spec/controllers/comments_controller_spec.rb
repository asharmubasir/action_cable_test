require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  let!(:user) { FactoryBot.create(:user, email: "ashar@gmail.com") }
  let!(:article) { FactoryBot.create(:article, user_id: user.id) }

  before do
    allow(request.env['warden']).to receive(:authenticate!).and_return(user)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe "POST #create" do
    it "success" do
      params = {content: "Live comment!"}
      expect { post :create, params: { comment: params, article_id:  article.id} }.to have_broadcasted_to("room_channel").with( msg: "Live comment!", user: "ashar", type: 'comment' )
    end
  end

end
