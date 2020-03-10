class ChatRoomsController < ApplicationController
  def index
    @chat_room = ChatRoom.all
  end

  def show
    @messages = Message.where(chat_room_id: params[:chat_room_id])
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

  def new
    @chat_room = ChatRoom.new
  end

  def create
    @chat_room = ChatRoom.new(name: "Chat")
    @chat_room.save!
    redirect_to @chat_room
    #@chat_room.user = current_user
  end



  def speak
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:name)
  end

end
