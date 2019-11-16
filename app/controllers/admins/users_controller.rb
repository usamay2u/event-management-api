class Admins::UsersController < ::ApplicationController
  before_action :authenticate_admin!
  before_action :set_user, only: [:edit, :update, :show, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
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
    if @user.destroy
      flash[:danger] = 'User successfully deleted!'
    end
    redirect_to admins_users_path
  end

  private
    def user_params
      user =  @user.class.name.downcase.to_sym
      params.require(user).permit(:first_name, :last_name, :email, :phone_number, :qr_code, :type,
                                   :avatar, :designation, :company_name)
    end

    def set_user
      @user = User.find_by_id(params[:id])
    end
end
