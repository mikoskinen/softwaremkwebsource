---
title: SSL Support in IRC7
permalink: windows-phone-irc-client-irc7-ssl-tls-support
description: This help shows how the Windows Phone IRC app IRC7 supports SSL/TLS.
layout: helppage.cshtml
tags: help, ssl, tls
time: 2011-12-21 18:00
---
## First Release: ##
Since the 1.5 release IRC7 has offered support for secure connections using the TLS 1.0 protocol.

## Usage: ##
In order to connect to a secured IRC server, tick the new "Secure(TLS/SSL)" box from the "Connect to Server" -dialog. After the connection has been established, everything should work similar to a standard connection.

## Supported Protocols: ##
IRC7 supports the TLS 1.0 ("SSL 3.1") protocol. To be more precise, the following cipher suits are supported:
* TLS_DHE_RSA_WITH_AES_256_CBC_SHA
* TLS_DHE_RSA_WITH_AES_128_CBC_SHA
* TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA
* TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA
* TLS_RSA_WITH_AES_256_CBC_SHA
* TLS_RSA_WITH_AES_128_CBC_SHA
* TLS_RSA_WITH_3DES_EDE_CBC_SHA

The client supports the simple TLS handshake where the server but not the client is authenticated.

## Current Status: ##
At this point there's no plans to add support for client-authenticated TLS handshake, because adding new certificates to the phone is not an easy task.

SSL 3.0 support may be added at a later time. Currently TLS 1.0 is the most supported protocol and most if not all of the IRC servers support it.

Currently the certificate which the server sends is always accepted. In the future versions it's likely that we add a support for common validations of the certificate (like the expiration date) and provide a warning popup if there's any problems with the certificate.

Please note: In this release the smart encoding doesn't work for SSL connections. The encoding is always UTF8.