class MessagesController < ApplicationController
  
  def index
    @message = Message.new
    @histories = Message.order(created_at: :desc).limit(10)
  end

  def create
    @message = Message.new(msg_params)
    if @message.save
      Services::BroadcastService.new(@message.content, current_user, 'chat').send!
    end
  end

  private
    def msg_params
      params.require(:message).permit(:content)
    end

end
