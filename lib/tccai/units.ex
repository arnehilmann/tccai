defmodule TccAI.Units do
  import SpringRTS.Callbacks, only: :functions

  def overview do
    Enum.map getTeamUnits, fn id ->
      unitdef_id = unit_getDef(id)
      %{
        :id => to_string(id),
        :def_id => to_string(unitdef_id),
        :name => to_string(unitDef_getName(unitdef_id)),
        :health => unit_getHealth(id),
        :max_health => unit_getMaxHealth(id),
        :isBeingBuilt => unit_isBeingBuilt(id),
        #:pos => unit_getPos(id)
      }
    end
  end

end
