class Api::V1::MessagesController < Api::V1::BaseController

  def create
    message      = Message.new()
    conversation = Conversation.find(params[:conversation_id])
    message.content         = params[:content]
    message.conversation_id = params[:conversation_id]
    message.user_id         = params[:user_id]
    if message.save!
      head :ok
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id, :conversation_id)
  end
end
