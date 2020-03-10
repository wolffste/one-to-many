class ChatRoomsController < ApplicationController
  def index
    @chat_room = ChatRoom.all
  end

  def show
    @messages = Message.all
    # @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

  def speak
  end
end
