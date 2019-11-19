class Admins::UsersController < ::ApplicationController
  before_action :authenticate_admin!
  before_action :set_user, only: [:edit, :update, :show, :destroy]

  def index
    @users = User.all
  end

  def new
    @user        = User.new
    @user_events = @user.event_users.new
  end

  def create
    begin
      User.create!(user_params)
      flash[:success] = 'User successfully created!'
    rescue => e
      flash[:danger] = e.to_s
    end
    redirect_to admins_users_path
  end

  def edit
    @user_events = @user.event_users
  end

  def update
    begin
      @user.update!(user_params)
      flash[:success] = 'User successfully updated!'
    rescue => e
      flash[:danger] = e.to_s
    end
    redirect_to admins_users_path
  end

  def show
  end

  def destroy
    begin
      @user.destroy
      flash[:danger] = 'User successfully deleted!'
    rescue => e
      flash[:danger] = e.to_s
    end
    redirect_to admins_users_path
  end

  private
    def user_params
      user =  @user.present? ? @user.class.name.downcase.to_sym : :user
      params.require(user).permit(:first_name, :last_name, :email, :phone_number, :qr_code, :type,
                                   :avatar, :designation, :company_name,
                                   event_users_attributes: [:id, :event_id, :_destroy])
    end

    def set_user
      @user = User.find_by_id(params[:id])
    end
end
