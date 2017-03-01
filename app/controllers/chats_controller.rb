class ChatsController < ApplicationController

  def index
    @chat = Chat.first_or_create(topic: 'Home Chat')
    @messages= Message.all
  end

  def show
    @chat = Chat.first_or_create(topic: 'Home Chat')
    @message = Message.new
  end


end
