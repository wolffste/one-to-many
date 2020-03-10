class ChatRoomsController < ApplicationController
  def index
    @chat_room = ChatRoom.all
  end

  def show
    @messages = Message.where(chat_room_id: params[:chat_room_id])
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end




  def speak
  end
end
