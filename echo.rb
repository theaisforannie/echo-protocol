require 'socket'

server = TCPServer.new 7
loop do
  Thread.start(server.accept) do |client|
    while msg = client.gets
     client.puts msg
    end    
  end
end
 
