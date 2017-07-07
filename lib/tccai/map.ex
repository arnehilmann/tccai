defmodule TccAI.Map do
  alias SpringRTS.Callbacks

  @moduledoc "aggregate map info"

  def get_contour_map do
    width = Callbacks.Map.get_width()
    height = Callbacks.Map.get_height()
    values = SpringRTS.Callbacks.Map.get_height_map(width * height)
    %{
      :width => width,
      :height => height,
      :values => values,
    }
  end
end
