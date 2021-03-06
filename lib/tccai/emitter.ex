defmodule TccAI.Emitter do
  @moduledoc false
  use GenEvent

  def handle_event({topic, data}, state) do
    IO.puts "#{inspect topic} : #{inspect data}"
    {:ok, state}
  end

  def handle_event(anything, state) do
    IO.puts "mmh... unknown event: #{inspect anything}"
    {:ok, state}
  end
end
