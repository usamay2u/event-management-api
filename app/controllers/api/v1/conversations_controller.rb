class Api::V1::ConversationsController < Api::V1::BaseController
  before_action :set_user, only: [:show, :index]
  before_action :set_conversation, only: [:show]
  before_action :set_conversation_users, only: [:find_or_create]

  def create
    conversation = Conversation.new
    if conversation.save!
      cu1 = UserConversation.create!(user_id: params[:sender_id], conversation_id: conversation.id)
      cu2 = UserConversation.create!(user_id: params[:receiver_id], conversation_id: conversation.id)
      ActionCable.server.broadcast 'conversations_channel', conversation
      render json: {conversation: conversation, message: 'Success' }, status: 200 and return
    else
      render json: {message: 'Could not create conversation.'}, status: 404 and return
    end
  end

  def find_or_create
    if @conversation.present?
      messages = @conversation.messages
      ActionCable.server.broadcast 'conversations_channel', @conversation
      render json: {messages: messages, conversation_id: @conversation.id, message: 'Success' }, status: 200 and return
    else
      conversation = Conversation.new
      if conversation.save!
        cu1 = UserConversation.create!(user_id: params[:sender_id], conversation_id: conversation.id)
        cu2 = UserConversation.create!(user_id: params[:receiver_id], conversation_id: conversation.id)
        ActionCable.server.broadcast 'conversations_channel', conversation
        render json: {messages: nil, conversation_id: conversation.id, message: 'Success' }, status: 200 and return
      else
        render json: {message: 'Could not create conversation.'}, status: 404 and return
      end
    end
  end

  def show
    render json: {message: 'Could not find event in our system.'}, status: 404 and return unless @conversation.present?
    @messages = @conversation.messages
    render json: {messages: @messages, message: 'Success' }, status: 200 and return
  end

  def index
    conversation_array = []
    render json: {message: 'You are not Authorize to see this conversation'}, status: 404 and return unless @current_user.present?
    conversations = @current_user.conversations
    conversations.find_each do |conversation|
      user = conversation.user_conversations.where("user_conversations.user_id != ?", @current_user.id).first.user
      user.avatar = 'http://167.71.43.55'+Rails.application.routes.url_helpers.rails_blob_path(user.avatar, only_path: true) if user.avatar.attached?
      conversation_array << { conversation: conversation, message: conversation.messages.last, user: user }
    end
    render json: {conversations: conversation_array, message: 'Success' }, status: 200 and return
  end

  private

  def set_conversation
    @conversation = @current_user.conversations.find_by(id: params[:id]) if @current_user.present?
  end

  def set_user
    @current_user  = User.find_by(id: params[:user_id])
  end

  def set_conversation_users
    conversation_ids = User.find(params[:sender_id]).conversations.pluck(:id) & User.find(params[:receiver_id]).conversations.pluck(:id)
    @conversation = Conversation.find(conversation_ids).first
  end
end
