require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let!(:user) { FactoryBot.create(:user, email: "ashar@gmail.com") }

  before do
    allow(request.env['warden']).to receive(:authenticate!).and_return(user)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe "POST #create" do
    it "success" do
      params = {title: "Article", content: Faker::Lorem.characters(number: 100)}
      response = post :create, params: { article: params, useer_id:  user.id}
      expect(response.status).to eq(302)
      expect(response).to redirect_to(articles_path)
    end
  end
end
