class UserMailer < ApplicationMailer
  default from: 'admin@eventmanagement.com'

  def verify_user_event
    @user  = params[:user]
    @event = params[:event]
    @token = params[:token]
    mail(to: @user.email, subject: 'Verification Token')
  end
end
