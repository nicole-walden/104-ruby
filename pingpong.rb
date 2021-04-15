require 'socket'

server  = 'hitchcock.freenode.net'
port    = 6667
socket  = TCPSocket.open(server, port)

nickname = 'SkillcrushBotOMG'
channel = '#somekindofwonderful'

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"

socket.puts "PRIVMSG #{channel} :Greetings friend!"

while message = socket.gets do
  puts message
  if message.match('^PING :')
    server = message.split(':').last
    puts "PONG #{server}"
    socket.puts "PONG #{server}"
  elsif message.match('Perfect timing!')
    puts "PRIVMSG #{channel} :Impeccable, I'm sure."
    socket.puts "PRIVMSG #{channel} :Impeccable, I'm sure."
  end
end
