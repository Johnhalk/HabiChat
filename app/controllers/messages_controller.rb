class MessagesController < ApplicationController

  def new
    @message = Message.create(params[:content])
    @chat = Chat.first_or_create(topic: 'Home Chat')
    redirect_to chats_path
  end

  def create
    message = Message.new(message_params)
    message.user_id = current_user.id
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.username
      head :ok
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :chat_id)
    end
end
