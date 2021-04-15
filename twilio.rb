require 'rubygems'
require 'twilio-ruby'

account_sid = "ACe770fe818b70381b949f677daeae1a27"
auth_token = "83a22565b994c42dd453559182709ac4"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
  :from => "+14702023707",
  :to => "+16192008943",
  :body => "Haaaii!"
)

puts message.to 
