class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  after_create :broadcast
  after_create :send_notification

  private

  def broadcast
    ActionCable.server.broadcast('conversations_channel', as_json.merge(action: 'CreateMessage'))
  end

  def send_notification
    # setting = NotificationSetting.find_by(name: 'checking_account_transfer')
    # if setting.present? && self.saved_change_to_attribute?(:status, from: "pending", to: "failed")
    receiver_user = self.conversation.users.where.not(id: self.user.id).first
    notification = receiver_user.notifications.new(
      heading: 'Message from '+self.user.name,
      subtitle: 'New Message',
      content: self.content,
      href: 'tabs2'
    )
    notification_service = Notification::Base.new(notification, receiver_user, '', [])
    notification_service.send_push
  end
end
