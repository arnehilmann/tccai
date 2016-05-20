defmodule TccAI.Simple do
  @moduledoc "simple ai"

  alias SpringRTS.Callbacks
  alias SpringRTS.Callbacks.Unit
  alias SpringRTS.Callbacks.UnitDef
  alias SpringRTS.Callbacks.Map
  alias SpringRTS.Commands

  def shutdown do
    import SpringRTS.Commands, only: :functions

    Enum.each Callbacks.get_team_units(),
      fn unitid ->
        IO.inspect unitid
        Commands.unit_self_destroy unitid, -1, 0, 0
      end
    :ok
  end

  def build_random do
    teamunits = Callbacks.get_team_units
    IO.inspect teamunits

    Enum.each teamunits,
      fn unitid ->
        nr_commands = Unit.get_current_commands unitid
        IO.inspect unitid
        IO.inspect nr_commands
        if nr_commands == 0 do
          unitdef = Unit.get_def unitid
          IO.inspect UnitDef.get_name unitdef

          options = UnitDef.get_build_options unitdef
          IO.inspect options

          if (length options) > 0 do
            to_build = Enum.at options, :random.uniform(length options) - 1
            IO.inspect to_build
            IO.inspect UnitDef.get_name to_build

            pos = Unit.get_pos unitid
            IO.inspect pos

            to_build_pos = Map.find_closest_build_site to_build, pos, 1000.0, 10, 0
            IO.inspect to_build_pos

            result = Commands.unit_build unitid, -1, 0, 99999999, to_build, to_build_pos, -1
            IO.inspect result
          end
        end
      end

    :ok
  end
end
