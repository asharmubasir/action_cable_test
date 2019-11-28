class MessagesController < ApplicationController
  
  def index
    @message = Message.new
    @histories = Message.order(created_at: :desc).limit(10)
  end

  def create
    @message = Message.create(msg_params)
    if @message.save
      ActionCable.server.broadcast "room_channel", msg: @message.content
    end
  end

  private
    def msg_params
      params.require(:message).permit(:content)
    end

end
