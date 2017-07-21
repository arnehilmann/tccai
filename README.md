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

* provides a simple dashboard, with list of units, resources info, and map overview

TODO
----

* better unit and command API

* caching of static information (started, using [con_cache](https://hexdocs.pm/con_cache/ConCache.html))

* setup with separate containers for engine and AI

* setup with multiple TccAI instances

* implement simple logic, with mediocre resource handling

* implement mediocre logic (perhaps with a neural network framework like [yanni](https://bitbucket.org/nato/yanni))
