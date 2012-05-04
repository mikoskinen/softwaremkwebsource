---
title: Alias Engine in IRC7
permalink: windows-phone-irc-client-irc7-alias-engine
description: This help shows how the Alias Engine inside the IRC7 works.
layout: helppage.cshtml
tags: help, alias
time: 2011-12-23 18:00
---
## First Release: ##
1.4 version of IRC7 added the Alias Engine to IRC7. The powerful alias-engine makes your IRC experience even more fluid. What is an alias engine then? In short, it allows you to define shortcuts for your common IRC operations.

## Basic of Usage: ##
Let's go through one example. Previously, if you wanted to OP someone, you had to open the user management and give the new mode from there. But now you can create a shortcut in a form of an alias which allows you to OP the user with only few keystrokes. An example of an OP-alias looks like the following:

> /op /mode $channel +o {0}

The alias starts with your desired command word. There can be only one alias with the same command. In the example, the command word is "/op". The rest of the alias consists of the operation you actually want to execute on the server.

The IRC7 alias-engine also has few  keywords which allow you create more complex aliases. In the example we're using one of these keywords, the "$channel". This particular keyword is replaced with channel name where this alias is executed. Our example alias also has one parameter which is marked by the "{0}". One parameter is always one word, unless it is post fixed with the "-" character.

## Availability ##

The aliases are available from the chat window, from the server console and from the startup scripts.

## Keywords ##

$channel = The current channel where alias is executed. If alias is execute from startup script or from server console, $channel is blank.

$me = Your current nick.

{0} = First parameter

{1} = Second parameter

{n} = ...

{n}- = Parameter which can contain multiple words. Can be only used as the last parameter of the alias. Please see an example of the /msg alias to see how this can be used.

## Examples ##

Alias without parameters
> /j /join #mychannel

Alias with one parameter
> /j1 /join {0}

Alias with two parameters
> /jp /join {0} {1}

Alias with multiple operations
> /j3 /join {0} | /join {1} | /join {2}

Alias with multi-word parameter
> /msg /privmsg {0} :{1}-

Alias with $me and $channel keywords
> /m /msg $channel hello, my name is $me!

Alias which uses other alias
> /msg /privmsg {0} :{1}-

> /id /msg ident me myPassword