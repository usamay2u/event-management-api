class Api::V1::EventsController < Api::V1::BaseController

	before_action :set_event, only: [:verify_event]
  before_action :set_event_through_user, only: [:details]

	def verify_event
		render json: {message: 'Could not find event in our system.'}, status: 404 and return unless @event.present?
		render json: {message: 'Success' }, status: 200 and return if @event.present?
	end

  def details
    render json: { event: build_event_object }, status: 200
  end

	private
  def build_event_object
    event_array = []
    ongoing_session_array = []
    upcoming_session_array = []
    @event.conferences.each do |conference|
      conference.cover_photo = 'http://167.71.43.55'+rails_blob_path(conference.cover_photo, only_path: true) if conference.cover_photo.attached?
      ongoing_session_array << conference if DateTime.now.utc.strftime( "%H%M%S%N" ).between?(conference.start_time.utc.strftime( "%H%M%S%N" ), conference.end_time.utc.strftime( "%H%M%S%N" ))
      upcoming_session_array << conference if DateTime.now.utc.strftime( "%H%M%S%N" ) < conference.start_time.utc.strftime( "%H%M%S%N" )
    end

    @event.cover_photo = 'http://167.71.43.55'+Rails.application.routes.url_helpers.rails_blob_path(@event.cover_photo, only_path: true) if @event.cover_photo.attached?
    @user.avatar = 'http://167.71.43.55'+Rails.application.routes.url_helpers.rails_blob_path(@user.avatar, only_path: true) if @user.avatar.attached?

    @event.users.find_each do |user|
      user.avatar = 'http://167.71.43.55'+Rails.application.routes.url_helpers.rails_blob_path(user.avatar, only_path: true) if user.avatar.attached?
    end

    event_array << { event: @event, user_type: @user.type, user: @user, sessions: @event.conferences, ongoing_session: ongoing_session_array,
                     upcoming_session: upcoming_session_array, sponsors: @event.users.sponsors,
                     speakers: @event.users.speakers, attendees: @event.users.attendees }
    event_array
  end

	def set_event
		@event = Event.find_by(code: params[:code])
	end

  def set_event_through_user
    event_user = EventUser.where(user_id: params[:id], verified: true).first
    @user  = event_user.user
    @event = event_user.event
  end
end
