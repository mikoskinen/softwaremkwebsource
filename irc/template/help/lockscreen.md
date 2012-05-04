---
title: Does IRC7 run under lock screen?
permalink: windows-phone-irc-client-irc7-lock-screen
description: The operating system doesn't suppor running IRC app under lock screen. Read here to find out why.
layout: helppage.cshtml
tags: help, general
time: 2011-12-26 18:00
---
Currently, IRC7 doesn't run under the lock screen. If you bring on the lock screen, your connections will be automatically closed and they are also automatically opened when the phone usage is resumed. Running IRC7 under the lock screen would be an excellent addition to the app but unfortunately, there are technical limitations in the Mango which prevent us from adding the support.

The problem is that the phone will automatically stop all the traffic in the socket connection as soon as you bring on the lock screen. The connection will stay open, but you won't receive any messages until the app is again activated. This means that when at some point the server sends a ping-query to you, the IRC7 won't receive the message and can't answer to it. This in turn will cause the server to disconnect you with the "Ping timeout" -message.

The best what we can do at the moment is to disable the user idle detection.