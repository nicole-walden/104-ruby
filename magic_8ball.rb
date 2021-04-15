# Magic 8-Ball App

# Require Ruby Gems
require 'rubygems'

# Require Twilio
require 'twilio-ruby'

# Account SID and Auth Token for Twilio
account_sid = "ACe770fe818b70381b949f677daeae1a27"
auth_token = "83a22565b994c42dd453559182709ac4"

# Create message array from Javascript lesson answers
array_8ball_answers = [
	"It is certain",
	"It is decidedly so",
	"Without a doubt",
	"Yes definitely",
	"You may rely on it",
	"As I see it, yes",
	"Most likely",
	"Outlook good",
	"Yes",
	"Signs point to yes",
	"Reply hazy try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful"
	]

# Get random number from 0 to 5
def answer_magic_8ball(message)
	rand_number = Random.new
	rand_number = rand(0 .. 19)
	answer = message[rand_number]
end

# User prompt
puts "What do you want to ask the Magic 8 Ball?"
user_question = gets.chomp

# Select random answer
answer = answer_magic_8ball(array_8ball_answers)

#Text answer using Twilio
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
  :from => "+14702023707",
  :to => "+16192008943",
  :body => "The Magic 8 Ball says: #{answer}"
)

puts message.to

puts "The Magic 8 Ball says: #{answer}"
