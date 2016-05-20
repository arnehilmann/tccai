defmodule TccAI.Units do
  import SpringRTS.Callbacks, only: :functions

  @moduledoc "aggregate unit info"

  def overview do
    Enum.map get_team_units, fn id ->
      unitdef_id = SpringRTS.Callbacks.Unit.get_def(id)
      %{
        :id => to_string(id),
        :def_id => to_string(unitdef_id),
        :name => to_string(SpringRTS.Callbacks.UnitDef.get_name(unitdef_id)),
#        :health => unit_getHealth(id),
#        :max_health => unit_getMaxHealth(id),
#        :isBeingBuilt => unit_isBeingBuilt(id),
        # :pos => unit_getPos(id)
      }
    end
  end

end
