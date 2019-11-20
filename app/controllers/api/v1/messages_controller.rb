class Api::V1::MessagesController < Api::V1::BaseController

  def create
    message      = Message.new
    conversation = Conversation.find(message_params[:conversation_id])
    if message.save!
      MessagesChannel.broadcast_to conversation, message
      head :ok
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id, :conversation_id)
  end
end
