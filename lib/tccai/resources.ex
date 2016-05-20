defmodule TccAI.Resources do
  alias SpringRTS.Callbacks.Economy
  alias SpringRTS.Callbacks.Resource

  @moduledoc "aggregate resource info"

  def current do
    Enum.map valid_resource_ids, fn id ->
      name = to_string(Resource.get_name(id))
      %{
        :id => to_string(id),
        :current => Economy.get_current(id),
        :storage => Economy.get_storage(id),
        :name => name,
        :income => Economy.get_income(id),
        :usage => Economy.get_usage(id),
        :excess => Economy.get_excess(id)
      }
    end
  end

  defp valid_resource_ids(id \\ 0) do
    if Economy.get_current(id) >= 0 do
      [id | valid_resource_ids(id + 1)]
    else
      []
    end
  end
end
