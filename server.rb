#!/usr/bin/ruby
require 'socket' # Get sockets from stdlib
puts "Starting up server ..."

server = TCPServer.open(2000) # Socket to listen on port 2000
loop {
  Thread.start(server.accept) do |client|
    puts "log: input from client"
    def chet(cl,t)
      if t.to_a[0].to_i % 2 == 0
        cl.puts "#{t} -- parne"
        else
        cl.puts "#{t} -- ne parne"
      end
    end

    i=0
    while i<15
    input = client.gets
    puts input
    t=Time.now
    chet(client,t)
    i+=1
    end
    client.puts "Closing the connection. Bye!"
    client.close                # Disconnect from the client
    puts "Client close!!! Bye!"

  end
}
