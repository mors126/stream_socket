#!/usr/bin/ruby
require 'socket'
s = TCPSocket.open('localhost', 2000)

def fu (serv)
  i=0
  while i<=15
    serv.puts Time.now
    sleep(1)
    i+=1
  end
end

Thread.new{fu(s)}

while (line = s.gets)   # Read lines from the socket
  puts line.chop      # And print with platform line terminator
end
s.close               # Close the socket when done