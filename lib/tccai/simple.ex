defmodule TccAI.Simple do
  def build_random(engine) do

    import Logger

    import SpringRTS.Callbacks, only: :functions
    import SpringRTS.Commands, only: :functions

    teamunits = getTeamUnits engine
    IO.inspect teamunits

    Enum.each teamunits,
      fn unitid ->
        unitdef = unit_getDef engine, unitid
        if unitDef_isBuilder engine, unitdef do
          nr_commands = unit_getCurrentCommands engine, unitid
          IO.inspect nr_commands
          if nr_commands == 0 do
            options = unitDef_getBuildOptions engine, unitdef
            IO.inspect options

            to_build = Enum.at options, :rand.uniform(length options) - 1
            IO.inspect to_build
            IO.inspect unitDef_getName engine, to_build

            pos = unit_getPos engine, unitid
            IO.inspect pos

            to_build_pos = map_findClosestBuildSite engine, to_build, pos, 1000.0, 10, 0
            IO.inspect to_build_pos

            result = unit_build engine, unitid, -1, 0, 9999999999, to_build, pos, -1
            IO.inspect result
          end
        end
      end

    :ok
  end
end
