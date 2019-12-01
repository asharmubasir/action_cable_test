require "rails_helper"

RSpec.describe RoomChannel, type: :channel do
  
  before do
    current_user = FactoryBot.create(:user)
    sign_in current_user
    stub_connection current_user: current_user
  end

  it "subscribes to a stream" do
    subscribe
    expect(subscription).to be_confirmed
    expect(subscription).to have_stream_from("room_channel")
  end
  
end
