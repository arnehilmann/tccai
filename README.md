TccAI
=====

TccAI is a skirmish AI for [spring-rts](https://springrts.com).
It is written in [elixir](https://elixir-lang.org) and connects to
the spring-rts engine via the [NullErlangAI](https://github.com/arnehilmann/NullErlangAI)
(a proxy AI without own logic, implemented as erlang c-node).

At the moment, TccAI implements the basic functions for handling units, commands,
the map and resource information.

Some Highlights
---------------

* connects to spring-rts via erlang network layer

* runs in a separate process, may even reside on a different host

* is restartable, i.e. the AI can reconnect to a running match

* the elixir shell allows changes to the running AI

* provides a small web server, showing a simple dashboard (unit list, resources, map overview)

TODO
----

* better unit API

* caching of static information

* setup with separate containers for engine and AI

* setup with multiple TccAI instances

* implement simple logic, with mediocre resource handling
