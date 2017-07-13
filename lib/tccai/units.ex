defmodule TccAI.Units do
  alias SpringRTS.Callbacks
  alias SpringRTS.Callbacks.Resource
  alias SpringRTS.Callbacks.Unit
  alias SpringRTS.Callbacks.UnitDef
  alias TccAI.Resources

  @moduledoc "aggregate unit info"

  defimpl Poison.Encoder, for: Tuple do
    def encode(tuple, options) do
      tuple
      |> Tuple.to_list
      |> Poison.encode!
    end
  end

  def overview do
    Enum.map Callbacks.get_team_units(), fn id ->
      unitdef_id = Unit.get_def(id)
      unitdef = fetch_unitdef(unitdef_id)
      health = Unit.get_health(id)
      max_health = Unit.get_max_health(id)
      %{
        :id => id,
        :def_id => unitdef_id,
        :name => to_string(unitdef.name),
        :human_name => to_string(unitdef.human_name),
        :health => health,
        :max_health => max_health,
        :rel_health => health / max_health,
        :is_being_built => Unit.is_being_built(id),
        :pos => Unit.get_pos(id),
        :category => unitdef.category,
        :is_builder => unitdef.is_builder,
        :can_build => unitdef.can_build,
      }
    end
  end

  def fetch_unitdefs(max_size \\ 100) do
    Enum.map Callbacks.get_unit_defs(max_size), fn id ->
      fetch_unitdef(id)
    end
  end

  def fetch_unitdef(id) do
    case ConCache.get(:unitdefs, id) do
      nil ->
        result = %{
          :id => id,
          :name => UnitDef.get_name(id),
          :human_name => UnitDef.get_human_name(id),
          :category => UnitDef.get_category_string(id),
          :is_builder => UnitDef.is_builder(id),
          :can_build => UnitDef.get_build_options(id),
        }
        costs = Enum.map Resources.valid_resource_ids(), fn r_id ->
          %{Resource.get_name(r_id) => UnitDef.get_cost(id, r_id)}
        end
        Enum.reduce(costs, result, fn (map, acc) -> Map.merge(acc, map) end)
        ConCache.put(:unitdefs, id, result)
        result
      any ->
        any
    end
  end
end
