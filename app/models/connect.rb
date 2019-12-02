class Connect < ApplicationRecord
  belongs_to :user, foreign_key: :user_id, class_name: 'User'
  belongs_to :link, foreign_key: :link_id, class_name: 'User'
  has_one_attached :business_card

  enum state: { pending: 0, approved: 1, rejected: 2 }

  after_create :send_notification

  private

  def send_notification
    setting = NotificationSetting.find_by(name: 'user_connection')
    if setting.present?
      notification = self.link.notifications.create!(
        heading: self.user.first_name+' says hi!',
        subtitle: self.user.first_name+' connected with you',
        content: 'Now you can also message '+self.user.first_name+' and vice versa.',
        href: 'tabs4'
      )
    end
  end
end
