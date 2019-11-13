class TWILIO::BASE
  require 'rubygems'
  require 'twilio-ruby'

  def send_message
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    @client = Twilio::REST::Client.new(account_sid, auth_token)

    message = @client.messages.create( from: '+19782613144', body: 'Do. Or do not. There is no try.', to: '+923004654672')
  end
end
