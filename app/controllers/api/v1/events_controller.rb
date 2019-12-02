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
    sponsors = []
    speakers = []
    attendees = []
    conferences = []

    @event.conferences.each do |conference|
      conference.profile_cover = 'https://41651b0a.ngrok.io'+rails_blob_path(conference.cover_photo, only_path: true) if conference.cover_photo.attached?
      ongoing_session_array << conference if DateTime.now.strftime( "%H%M%S%N" ).between?(conference.start_time.strftime( "%H%M%S%N" ), conference.end_time.strftime( "%H%M%S%N" ))
      upcoming_session_array << conference if DateTime.now.strftime( "%H%M%S%N" ) < conference.start_time.strftime( "%H%M%S%N" )
      conferences << conference
    end

    @event.profile_cover = 'https://41651b0a.ngrok.io'+Rails.application.routes.url_helpers.rails_blob_path(@event.cover_photo, only_path: true) if @event.cover_photo.attached?
    @user.profile_avatar = 'https://41651b0a.ngrok.io'+Rails.application.routes.url_helpers.rails_blob_path(@user.avatar, only_path: true) if @user.avatar.attached?

    @event.users.find_each do |user|
      user.profile_avatar = 'https://41651b0a.ngrok.io'+Rails.application.routes.url_helpers.rails_blob_path(user.avatar, only_path: true) if user.avatar.attached?
      attendees << user if user.type == 'Attendee'
      speakers << user if user.type == 'Speaker'
      sponsors << user if user.type == 'Sponsor'
    end

    event_array << { event: @event, user_type: @user.type, user: @user, sessions: conferences, ongoing_session: ongoing_session_array,
                     upcoming_session: upcoming_session_array, sponsors: sponsors,
                     speakers: speakers, attendees: attendees }
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
