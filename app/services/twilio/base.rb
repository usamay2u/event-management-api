class Twilio::Base

  def initialize
    @client =  Twilio::REST::Client.new('AC676b8529e32eb0c3676a7b54e66a2c36', 'e5774509e057c2f1f536ae3773d298d6')
  end

  def send_message phone_number, token
    body = "Your verification code for convergent app is #{token}"
    message = @client.messages.create( from: '+19782613144', body: body, to: phone_number)
  end
end
