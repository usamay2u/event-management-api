class Notification < ApplicationRecord

  belongs_to :user

  validates :heading, :content, :user_id, presence: true

  attr_accessor :email_template, :email_params

  after_create :send_push_notification

  scope :unread , -> { where(is_read: false)}
  scope :read , -> { where(is_read: true)}

  protected
  def send_push_notification
    player_id = self.user.player_id
    if player_id.present?
      params = {
        'app_id' => 'eca3bd6f-cbff-4272-8168-16407ddc96b2',
        'headings' => {'en': self.heading},
        'contents' => {'en': self.content},
        'include_player_ids' => [player_id]
      }
      uri          = URI.parse('https://onesignal.com/api/v1/notifications')
      http         = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      request      = Net::HTTP::Post.new(uri.path,'Content-Type'  => 'application/json;charset=utf-8')
      request.body = params.as_json.to_json
      response     = http.request(request)
      puts '_______________________'
      puts response.inspect
      puts JSON.parse(response.body)
      puts '_______________________'
    end
  end

  def send_email_notification
    if email_template.present? and email_params.present?
      UserMailer.send(email_template.to_sym, *email_params).deliver_now
    end
  end
end
