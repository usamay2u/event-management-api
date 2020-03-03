class Notification::Base

  attr_accessor :user_notification_setting , :notification , :email_template , :email_params

  # def initialize  notification ,setting_id , user , email_template , email_params
  def initialize  notification, user, email_template, email_params
    @notification  = notification
    @email_template = email_template
    @email_params = email_params
    @user = user
    # @user_notification_setting = user.user_notification_settings.find_by(notification_setting_id: setting_id)
  end

  def notify_user
    if @user_notification_setting.present? && !@user.mark_for_archive
      send_email if @user_notification_setting.email_active == true
      send_push if @user_notification_setting.notification_active == true
      send_text if @user_notification_setting.text_active == true && @user.phone_number.present?
    end
  end

  def send_email
    if @email_template.present? && email_params.present?
      UserMailer.send(email_template.to_sym, *email_params).deliver_now
    end
  end

  def send_push
    @notification.save! if @notification.present?
  end

  def send_text
    @message_service = Twilio::Base.new
    @message_service.send_message @user.phone_number , @notification.content.concat(' -Steadipay') if @notification.present?
  end
end
