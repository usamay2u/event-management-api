class Admins::UsersController < ::ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.all
  end

  def new
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
