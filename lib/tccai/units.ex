defmodule TccAI.Units do
  alias SpringRTS.Callbacks
  alias SpringRTS.Callbacks.Unit
  alias SpringRTS.Callbacks.UnitDef

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
        :is_being_built => Unit.is_being_built(id),
        :pos => Unit.get_pos(id),
        :category => UnitDef.get_category_string(unitdef_id),
        :is_builder => UnitDef.is_builder(unitdef_id),
      }
    end
  end
end
