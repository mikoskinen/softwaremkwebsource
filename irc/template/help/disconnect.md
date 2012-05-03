---
title: Why am I disconnected when I switch my Windows Phone 7 to an another app?
permalink: windows-phone-irc-client-irc7-disconnecting
description: The app disconnects your IRC-connection when the app is sent to back. Read here to find out why.
layout: helppage.cshtml
tags: help, general
time: 2011-12-27 18:00
---
Unfortunately the Windows Phone 7 Mango doesn't allow an app to keep its sockets connected when the app is deactivated. This means that all connections are automatically disconnected by the operating system as soon as the app is moved to the background. IRC7 will reconnect automatically when it's again activated.