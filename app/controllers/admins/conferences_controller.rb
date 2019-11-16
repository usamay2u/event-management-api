class Admins::ConferencesController < ::ApplicationController
  before_action :authenticate_admin!
  before_action :set_conference, only: [:edit, :update, :show, :destroy]

  def index
    @conferences = Conference.all
  end

  def new
    @conference = Conference.new
  end

  def create
    begin
      Conference.create!(conference_params)
      flash[:success] = 'Conference successfully created!'
    rescue => e
      flash[:danger] = e.to_s
    end
    redirect_to admins_conferences_path
  end

  def edit
  end

  def update
    begin
      @conference.update!(conference_params)
      flash[:success] = 'Conference successfully updated!'
    rescue => e
      flash[:danger] = e.to_s
    end
    redirect_to admins_conferences_path
  end

  def show
  end

  def destroy
    if @conference.destroy
      flash[:danger] = 'Conference successfully deleted!'
    end
    redirect_to admins_conferences_path
  end

  private
    def conference_params
      params.require(:conference).permit(:name, :description, :date, :venue, :start_time, :end_time,  :cover_photo, :event_id)
    end

    def set_conference
      @conference = Conference.find_by_id(params[:id])
    end
end
