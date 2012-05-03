---
title: IRC7 is missing command X. Is there a way to send a raw IRC-command to the server?
permalink: windows-phone-irc-client-raw-irc-commands
description: The application supports sending raw IRC-commands to the server.
layout: helppage.cshtml
tags: help, general
time: 2011-12-22 18:00
---
Yes, it is possible to send raw IRC-commands to the server. To do that you should prefix your chat-messages with the '/' character. For example, if you want to invite someone to your channel, you can type "/INVITE usersnick #yourchannel". Note that on the server console every message is treated as a raw-command so no prefix is required.