module Services
  class BroadcastService

    def initialize content, current_user, type
      @content = content
      @user = current_user
      @type = type
    end

    def send!
      ActionCable.server.broadcast "room_channel", msg: @content, user: @user.name, type: @type
    end

  end
end
