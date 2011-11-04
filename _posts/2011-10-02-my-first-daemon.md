---
layout: post
title: My First Daemon
category: Understanding-Networks
comments: true
---

**Playing a multiplayer game through Telnet with Sinatra & a daemon.**

For our first 'make something' assignment in [Understanding Networks](/Understanding-Networks) we were tasked with creating a client for a Telnet server to play a game [similar to pong](https://github.com/tigoe/MakingThingsTalk2/tree/master/chapter2/project2/MonskiPong).

The class is taught in PHP, a fact which has convinced me to do (and someday document how to do) everything in Ruby. Of course Telnet is a persistent connection and HTTP is stateless. Trying to maintain a Telnet connection strictly through a browser is then not possible without diving into the world of sockets and streaming.

<script src="https://gist.github.com/1257779.js?file=daemon.rb"></script>

To maintain the browser as the interface but not have `telnet` happening in the HTTP requests I wrote, with the help of resident Greg Borenstein, a daemon. A [daemon](http://en.wikipedia.org/wiki/Daemon_(computing)) is a script that runs in the background, constantly. In my case the daemon listens to the database for a new Task. When it finds a new Task it sends the contents of the Task to the Telnet connection and then marks the Task as completed.

The Task is a DataMapper object.

<script src="https://gist.github.com/1257779.js?file=Task.rb"></script>

The user clicks an arrow or connection button in the browser and a Task object is created with that command and designated as not being done. In the end this worked well, however the latency between browser to database to daemon to telnet server was only manageable running the app locally.

[Source on Github](https://github.com/stevenklise/BallDropClient)