class Api::V1::UsersController < Api::V1::BaseController

  before_action :set_event_user, only: [:verify_user]

  def verify_user
    render json: { message: 'Could not find user or event in our system.' }, status: 404 and return unless @event_user.present?
    @event_user.generate_token_and_send_email
    render json: { message: 'Success' }, status: 200 and return if @user.present?
  end

  private

  def set_event_user
    user  = User.find_by_email(params[:email])
    event = Event.find_by(code: params[:code])
    @event_user = EventUser.where(user_id: user.id, event_id: event.id)
  end
end
