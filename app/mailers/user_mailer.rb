class UserMailer < ApplicationMailer
  default from: 'admin@eventmanagement.com'

  def verify_user_event
    byebug
    @user = params[:user]
    mail(to: @user.email, subject: 'Verification Token')
  end
end
