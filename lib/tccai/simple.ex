defmodule TccAI.Simple do
  def build_random() do
    import SpringRTS.SkirmishAI.Callbacks, only: :functions
    import SpringRTS.SkirmishAI.Commands, only: :functions

    #    Process.register(TccAI.cnode(), :cnode)

    #units = getTeamUnits
    #IO.inspect units

    #unitdefs = units
    #|> Enum.map(&(unit_getDef &1))
    #IO.inspect unitdefs

    #is_builder = unitdefs
    #|> Enum.map(&(unitDef_isBuilder &1))
    #IO.inspect is_builder

    Enum.each(getTeamUnits,
      fn unitid ->
        unitdef = unit_getDef unitid
        if unitDef_isBuilder unitdef do
          nr_commands = unit_getCurrentCommands unitid
          IO.inspect nr_commands
          if nr_commands == 0 do
            options = unitDef_getBuildOptions unitdef
            IO.inspect options

            to_build = Enum.at options, :rand.uniform(length options) - 1
            IO.inspect to_build
            IO.inspect unitDef_getName to_build

            pos = unit_getPos unitid
            IO.inspect pos

            to_build_pos = map_findClosestBuildSite to_build, pos, 1000.0, 10, 0
            IO.inspect to_build_pos

            result = unit_build unitdef, -1, 0, 99999999, to_build, pos, 0
            IO.inspect result
          end
        end
      end
    )

    :ok
  end

  def build_something() do
    :io.format "[simple] building something~n"
    ai_pid = {:foo, :erlang_ai0@elk}
    send ai_pid, {:callback, :getTeamUnits, 100, self()}
    receive do
      { :ok, [h|_] } -> builder = h
      _any -> raise "unknown response format"
      after 1000 -> raise "timeout"
    end
    :io.format "first unit found: ~w~n", [builder]

    send ai_pid, {:callback, :Unit_getDef, builder, self()}
    receive do
      { :ok, unitdef } -> builder_unitdef = unitdef
      any -> raise :io_lib.format "unknown response: ~w", [any]
      after 1000 -> raise "timeout"
    end
    :io.format "unitdef of builder: ~w~n", [builder_unitdef]

    send ai_pid, {:callback, :UnitDef_getBuildOptions, builder_unitdef, 100, self()}
    receive do
      { :ok, [h|_] } ->
        to_build = h
      { :ok, [] } ->
        raise "cannot build anything"
      any ->
        raise :io_lib.format "unknown response: ~w", [any]
      after 1000 ->
        raise "timeout"
    end
    :io.format "unit to be build: ~w~n", [to_build]

    send ai_pid, {:callback, :Unit_getPos, builder, self()}
    receive do
      { :ok, current_pos } -> [x, y, z] = current_pos
      any -> raise :io_lib.format "unknown response: ~w", [any]
      after 1000 -> raise "timeout"
    end
    :io.format "current pos: ~w/~w~n", [x, z]

    send ai_pid, {:callback, :Map_findClosestBuildSite, to_build, x, y, z, 1000.0, 10, 0, self()}
    receive do
      { :ok, new_pos }-> [x, y, z] = new_pos
      any -> raise :io_lib.format "unknown response: ~w", [any]
      after 1000 -> raise "timeout"
    end
    :io.format "new pos: ~w/~w~n", [x, z]

    send ai_pid, {:command, :COMMAND_UNIT_BUILD, builder, -1, 0, 99999999, to_build, x, y, z, 0, self()}
    receive do
      { :ok } -> :io.format("ok")
      any -> raise :io_lib.format "unknown response: ~w", [any]
      after 1000 -> raise "timeout"
    end

  end
end

#send {:foo, :erlang_ai0@elk}, {:callback, :Unit_getDef, 11555, self()}
#send {:foo, :erlang_ai0@elk}, {:callback, :UnitDef_getBuildOptions, 220, 100, self()}
#send {:foo, :erlang_ai0@elk}, {:callback, :Unit_getPos, 11555, self()}
#send {:foo, :erlang_ai0@elk}, {:callback, :Map_findClosestBuildSite, 325, 3761.0, 45.0, 257.0, 1000.0, 10, 0, self()}
#send {:foo, :erlang_ai0@elk}, {:command, :COMMAND_UNIT_BUILD, 11555, -1, 0, 99999999, 325, 3761.0, 45.0, 257.0, 0, self()}
#send {:foo, :erlang_ai0@elk}, {:callback, :getTeamUnits, 100, self()}
