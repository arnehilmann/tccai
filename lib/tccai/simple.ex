defmodule TccAI.Simple do
  import SpringRTS.Callbacks, only: :functions

  def build_random do
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

  def economy_overview do
    Enum.reduce valid_resource_ids, %{}, fn id, tmp_map ->
      name = to_string(resource_getName(id))
      Map.put(tmp_map, name, %{
        :id => to_string(id),
        :current => economy_getCurrent(id),
        :storage => economy_getStorage(id),
        :name => name,
        :income => economy_getIncome(id),
        :usage => economy_getUsage(id),
        :excess => economy_getExcess(id)
      })
    end
  end

  defp valid_resource_ids(id \\ 0) do
    if economy_getCurrent(id) >= 0 do
      [id | valid_resource_ids(id + 1)]
    else
      []
    end
  end

  def units do
    Enum.reduce getTeamUnits, %{}, fn id, tmp ->
      unitdef_id = unit_getDef(id)
      Map.put(tmp, to_string(id), %{
        :id => to_string(id),
        :def_id => to_string(unitdef_id),
        :name => to_string(unitDef_getName(unitdef_id)),
        #:pos => unit_getPos(id)
      })
    end
  end

end
