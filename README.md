TccAI
=====

TccAI is a skirmish AI for [spring-rts](https://springrts.com).
It is written in [elixir](https://elixir-lang.org) and connects to
the spring-rts engine via the [NullErlangAI](https://github.com/arnehilmann/NullErlangAI)
(a dumb AI without own logic, acting as proxy only, implemented as erlang c-node).

At the moment, the rudimentary functions for handling units, commands, and
querying map and resource information are working.

Some Highlights
---------------

* connects to spring-rts via erlang network layer

* AI runs in a separate process, may even reside on a different host

* is restartable, i.e. the AI can reconnect to a running match

* the elixir shell allows changes to the running AI

* provides a small web server, providing a simple dashboard (unit list, resources, map overview)

TODO
----

* Better unit API

* caching of static information

* setup with separate containers for engine and AI

* setup with multiple TccAI instances

* simple AI with mediocre resource handling
