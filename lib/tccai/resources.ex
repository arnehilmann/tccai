defmodule TccAI.Resources do
  import SpringRTS.Callbacks, only: :functions

  def current do
    Enum.map valid_resource_ids, fn id ->
      name = to_string(resource_getName(id))
      %{
        :id => to_string(id),
        :current => economy_getCurrent(id),
        :storage => economy_getStorage(id),
        :name => name,
        :income => economy_getIncome(id),
        :usage => economy_getUsage(id),
        :excess => economy_getExcess(id)
      }
    end
  end

  # overview as map
  #def overview do
  #  Enum.reduce valid_resource_ids, %{}, fn id, tmp_map ->
  #    name = to_string(resource_getName(id))
  #    Map.put(tmp_map, name, %{
  #      :id => to_string(id),
  #      :current => economy_getCurrent(id),
  #      :storage => economy_getStorage(id),
  #      :name => name,
  #      :income => economy_getIncome(id),
  #      :usage => economy_getUsage(id),
  #      :excess => economy_getExcess(id)
  #    })
  #  end
  #  end

  defp valid_resource_ids(id \\ 0) do
    if economy_getCurrent(id) >= 0 do
      [id | valid_resource_ids(id + 1)]
    else
      []
    end
  end
end
