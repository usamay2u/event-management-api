class Api::V1::UsersController < Api::V1::BaseController

  before_action :set_event_user, only: [:verify_user]
  before_action :set_link_users, only: [:connect_with_other]
  before_action :set_user, only: [:log_out]

  def verify_user
    render json: { message: 'Could not find user in our system.' }, status: 404 and return unless @event_user.present?
    @event_user.generate_token_and_send_email
    render json: { event_user_id:  @event_user.id, message: 'Success'}, status: 200 and return
  end

  def verify_token
    @event_user = EventUser.find_by_id(params[:id])
    if @event_user.present? && @event_user.verification_code == params[:token]
      @event_user.verified_user_with_event
      render json: { user:  @event_user.user, message: 'Success'}, status: 200 and return
    else
      render json: { message: 'Authentication Failed' }, status: 404 and return
    end
  end

  def connect_with_other
    render json: { message: 'Users are not from same event.'}, status: 404 and return unless @verify_link.present?
    @user.connects.create!(link_id: @link_user.id, qr_info: params[:qr_info], state: 1)
    render json: { links: @user.links, message: 'Success'}, status: 200 and return
  end

  def log_out
    render json: { message: 'User not found.'}, status: 404 and return unless @user.present?
    @user.event_users.update_all(verified: false)
    render json: { message: 'Success'}, status: 200 and return
  end

  private

  def set_event_user
    user  = User.find_by_email(params[:email])
    event = Event.find_by(code: params[:code])
    @event_user = EventUser.where(user_id: user.id, event_id: event.id).first rescue nil
  end

  def set_link_users
    @user        = User.find_by_id(params[:user_id])
    @link_user   = User.find_by(qr_code: params[:qr_code])
    user_event   = @user.event_users.where(verified: true).first rescue nil
    @verify_link = @link_user.events.ids.include?(user_event.event_id) if user_event.present?
  end

  def set_user
    @user = User.find_by_id(params[:user_id])
  end

end
