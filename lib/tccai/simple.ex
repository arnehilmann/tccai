defmodule TccAI.Simple do
  def build_random() do

    import Logger

    import SpringRTS.Callbacks, only: :functions
    import SpringRTS.Commands, only: :functions

    teamunits = getTeamUnits
    IO.inspect teamunits

    Enum.each teamunits,
      fn unitid ->
        nr_commands = unit_getCurrentCommands unitid
        IO.inspect unitid
        IO.inspect nr_commands
        if nr_commands == 0 do
          unitdef = unit_getDef unitid
          IO.inspect unitDef_getName unitdef

          options = unitDef_getBuildOptions unitdef
          IO.inspect options

          if (length options) > 0 do
            to_build = Enum.at options, :random.uniform(length options) - 1
            IO.inspect to_build
            IO.inspect unitDef_getName to_build

            pos = unit_getPos unitid
            IO.inspect pos

            to_build_pos = map_findClosestBuildSite to_build, pos, 1000.0, 10, 0
            IO.inspect to_build_pos

            result = unit_build unitid, -1, 0, 99999999, to_build, to_build_pos, -1
            IO.inspect result
          end
        end
      end

    :ok
  end
end
