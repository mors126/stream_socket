# stream_socket
stream and socket. server and client

Run the following commands one by one:
1) ruby server.rb
2) ruby client.rb

It detects if time ends on 'parne' or 'neparne' number.

> ruby server.rb 
log: input from client
2016-02-03 00:34:09 +0200
2016-02-03 00:34:10 +0200
2016-02-03 00:34:11 +0200
2016-02-03 00:34:12 +0200

> ruby client.rb
2016-02-03 00:34:09 +0200 -- ne parne
2016-02-03 00:34:10 +0200 -- parne
2016-02-03 00:34:11 +0200 -- ne parne
2016-02-03 00:34:12 +0200 -- parne
