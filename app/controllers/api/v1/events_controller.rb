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
      ongoing_session_array << conference if DateTime.now.between?(conference.start_time, conference.end_time)
      upcoming_session_array << conference if DateTime.now < conference.start_time
    end

    event_array << { event: @event, user: @user, sessions: @event.conferences, ongoing_session: ongoing_session_array,
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
