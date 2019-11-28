require "rails_helper"

RSpec.describe RoomChannel, type: :channel do

  it "subscribes to a stream" do
    subscribe
    expect(subscription).to be_confirmed
    expect(subscription).to have_stream_from("room_channel")
  end

end
