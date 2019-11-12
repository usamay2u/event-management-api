class Admins::DashboardController < ::ApplicationController
  before_action :authenticate_admin!

  def index
    @users_count       = User.count
    @events_count      = Event.count
    @conferences_count = Conference.count
  end
end