class Api::V1::ConversationsController < Api::V1::BaseController
  before_action :set_user, only: [:show, :index]
  before_action :set_conversation, only: [:show]

  def create
    conversation = Conversation.new
    if conversation.save!
      cu1 = UserConversation.create!(user_id: params[:sender_id], conversation_id: conversation.id)
      cu2 = UserConversation.create!(user_id: params[:reciver_id], conversation_id: conversation.id)
      ActionCable.server.broadcast 'conversations_channel', conversation
      render json: {conversation: conversation, message: 'Success' }, status: 200 and return
    else
      render json: {message: 'Could not create conversation.'}, status: 404 and return
    end
  end

  def show
    render json: {message: 'Could not find event in our system.'}, status: 404 and return unless @conversation.present?
    @messages = @conversation.messages
    render json: {messages: @messages, message: 'Success' }, status: 200 and return
  end

  def index
    render json: {message: 'You are not Authorize to see this conversation'}, status: 404 and return unless @current_user.present?
    @conversations = @current_user.conversations.include(:users, :messages)
    render json: {conversations: conversations, message: 'Success' }, status: 200 and return
  end

  private

  def set_conversation
    @conversation = @current_user.conversations.find_by(id: params[:id]) if @current_user.present?
  end

  def set_user
    @current_user  = User.find_by(id: user_id)
  end
end
