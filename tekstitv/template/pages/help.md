### How to get started with IRC7? ###
The [following video](http://www.youtube.com/watch?v=HmXZ-PKxQ68) shows how you can get started with this IRC chat app.

### Why am I disconnected when I switch my Windows Phone 7 to an another app? ###
Unfortunately the Windows Phone 7 Mango doesn’t allow an app to keep its sockets connected when the app is deactivated. This means that all connections are automatically disconnected by the operating system as soon as the app is moved to the background. IRC7 will reconnect automatically when it’s again activated.

### Does IRC7 run under lock screen? ###
Currently, IRC7 doesn’t run under the lock screen. If you bring on the lock screen, your connections will be automatically closed and they are also automatically opened when the phone usage is resumed. Running IRC7 under the lock screen would be an excellent addition to the app but unfortunately, there are technical limitations in the Mango which prevent us from adding the support.

The problem is that the phone will automatically stop all the traffic in the socket connection as soon as you bring on the lock screen. The connection will stay open, but you won’t receive any messages until the app is again activated. This means that when at some point the server sends a ping-query to you, the IRC7 won’t receive the message and can’t answer to it. This in turn will cause the server to disconnect you with the “Ping timeout” –message.

The best what we can do at the moment is to disable the user idle detection.

### What character encoding does the IRC7 use? ###

For all of the outgoing messages IRC7 uses the UTF-8 encoding. For the incoming messages IRC7 supports the UTF-8 and the ISO-8859-1 encodings. It is capable of reading messages both in ISO 8859-1 or UTF-8 in the same channel, heuristically auto detecting which encoding is used.

### What IRC-networks are supported by the IRC7? ###

IRC7 supports all the IRC-networks which follow the standard IRC-protocol. It has been tested with the following networks:

QuakeNet
IRCNet
Undernet
EFNet
DALnet

### IRC7 is missing command X. Is there a way to send a raw IRC-command to the server? ###

Yes, it is possible to send raw IRC-commands to the server. To do that you should prefix your chat-messages with the ‘/’ character. For example, if you want to invite someone to your channel, you can type “/INVITE usersnick #yourchannel”. Note that on the server console every message is treated as a raw-command so no prefix is required.

### Does IRC7 support SSL? ###

Yes!