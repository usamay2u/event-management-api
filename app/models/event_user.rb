class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # validates :verification_code, uniqueness: true

  def generate_token_and_send_email
    self.update!(verification_code: gen_code)
    UserMailer.with(user: user, event: event, token: verification_code).verify_user_event.deliver_later
  end

  private

  def gen_code
    key = ""
    num = '0123456789'
    6.times{ key += num[rand(num.size)].to_s }
    puts key
    return key
  end
end
