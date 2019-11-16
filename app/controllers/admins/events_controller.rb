class Admins::EventsController < ::ApplicationController
  before_action :authenticate_admin!
  before_action :set_event, only: [:edit, :update, :show, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    begin
      Event.create!(event_params)
      flash[:success] = 'Event successfully created!'
    rescue => e
      flash[:danger] = e.to_s
    end
    redirect_to admins_events_path
  end

  def edit
  end

  def update
    begin
      @event.update!(event_params)
      flash[:success] = 'Event successfully updated!'
    rescue => e
      flash[:danger] = e.to_s
    end
    redirect_to admins_events_path
  end

  def show
  end

  def destroy
    if @event.destroy
      flash[:danger] = 'event successfully deleted!'
    end
    redirect_to admins_events_path
  end

  private
    def event_params
      params.require(:event).permit(:name, :code, :description, :venue, :start_date, :end_date, :cover_photo)
    end

    def set_event
      @event = Event.find_by_id(params[:id])
    end
end
