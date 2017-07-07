defmodule TccAI.Units do
  alias SpringRTS.Callbacks
  alias SpringRTS.Callbacks.Resource
  alias SpringRTS.Callbacks.Unit
  alias SpringRTS.Callbacks.UnitDef
  alias TccAI.Resources

  @moduledoc "aggregate unit info"

  def overview do
    Enum.map Callbacks.get_team_units(), fn id ->
      unitdef_id = Unit.get_def(id)
      %{
        :id => to_string(id),
        :def_id => to_string(unitdef_id),
        :name => to_string(UnitDef.get_name(unitdef_id)),
        :human_name => to_string(UnitDef.get_human_name(unitdef_id)),
        :health => Unit.get_health(id),
        :max_health => Unit.get_max_health(id),
        :is_being_built => to_string(Unit.is_being_built(id)),
        # :pos => to_string(Unit.get_pos(id)),
        :category => to_string(UnitDef.get_category_string(unitdef_id)),
        :is_builder => to_string(UnitDef.is_builder(unitdef_id)),
      }
    end
  end

  def fetch_unitdefs(max_size \\ 100) do
    Enum.map Callbacks.get_unit_defs(max_size), fn id ->
      result = %{
        :id => id,
        :human_name => UnitDef.get_human_name(id),
        :can_build => UnitDef.get_build_options(id),
      }
      costs = Enum.map Resources.valid_resource_ids(), fn r_id ->
        %{Resource.get_name(r_id) => UnitDef.get_cost(id, r_id)}
      end

      Enum.reduce(costs, result, fn (map, acc) -> Map.merge(acc, map) end)
    end
  end
end
