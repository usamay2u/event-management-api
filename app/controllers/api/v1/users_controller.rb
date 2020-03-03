class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_event_user, only: [:verify_user]
  before_action :set_user, only: [:log_out, :get_links, :connect_with_other, :get_conferences, :update]
  before_action :set_conference, only: [:get_speakers]

  def verify_user
    render json: { message: 'Could not find user in our system.' }, status: 404 and return unless @event_user.present?
    @event_user.generate_token_and_send_email
    if params['phone_number'].present?
      phone_number = '+'+params['phone_number']
      @event_user.user.update!(phone_number: phone_number)
      @message_service = Twilio::Base.new
      @message_service.send_message(phone_number, @event_user.verification_code)
    end
    render json: { event_user_id:  @event_user.id, message: 'Success'}, status: 200 and return
  end

  def verify_token
    @event_user = EventUser.find_by_id(params[:id])
    @event_user.verified_user_with_event
    render json: { user:  @event_user.user, message: 'Success'}, status: 200 and return
    if @event_user.present? && @event_user.verification_code == params[:token]
      @event_user.verified_user_with_event
      render json: { user:  @event_user.user, message: 'Success'}, status: 200 and return
    else
      render json: { message: 'Authentication Failed' }, status: 404 and return
    end
  end

  def get_links
    render json: { message: 'User not found.'}, status: 404 and return unless @user.present?
    render json: { users:  @user.links, message: 'Success'}, status: 200 and return
  end

  def connect_with_other
    verify_link = nil
    qr_code     = Regexp.quote(params[:qr_code]).split('\\')[0]
    link_user   = User.find_by(qr_code: qr_code)
    user_event  = @user.event_users.where(verified: true).first rescue nil
    verify_link = link_user.events.ids.include?(user_event.event_id) if user_event.present? && link_user.present?
    render json: { message: 'This user is not in our system for this event'}, status: 404 and return unless verify_link.present?
    @user.connects.create!(link_id: link_user.id, qr_info: params[:qr_info], state: 1)
    render json: { links: @user.links, message: 'Success'}, status: 200 and return
  end

  def log_out
    render json: { message: 'User not found.'}, status: 404 and return unless @user.present?
    @user.event_users.update_all(verified: false)
    render json: { message: 'Success'}, status: 200 and return
  end

  def get_conferences
    conferences = []
    @user.conference_users.find_each do |conference_user|
      conferences << conference_user.conference
    end
    render json: { sessions: conferences}, status: 200 and return
  end

  def get_speakers
    speakers = []
    speakers = @conference.users.speakers
    render json: { speakers: speakers}, status: 200 and return
  end

  def update
    if @user.update!(user_update_params)
      render json: { message: 'Success' }, status: 200
    else
      render json: { message: 'Error Occurred' }, status: 500
    end
  end

  private

  def user_update_params
    params.permit(:player_id)
  end

  def set_event_user
    user  = User.find_by_email(params[:email])
    event = Event.find_by(code: params[:code])
    @event_user = EventUser.where(user_id: user.id, event_id: event.id).first rescue nil
  end

  def set_user
    id    = params[:id] || params[:user_id]
    @user = User.find_by_id(id)
  end

  def set_conference
    id    = params[:id] || params[:user_id]
    @conference = Conference.find_by_id(id)
  end

end
