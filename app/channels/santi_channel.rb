class SantiChannel < ApplicationCable::Channel
  def subscribed
    #stream_from "chat_room(id)"
    stream_from "chat_room_#{params[:chat_room_id]}"
  end

end
