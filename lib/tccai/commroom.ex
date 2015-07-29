defmodule TccAI.CommRoom do
  use GenServer


  def start_link(opts \\ []) do
    :gen_server.start_link({ :local, :commroom }, __MODULE__, [], opts)
    #:gen_server.start_link(__MODULE__, :ok, [])
  end


  def init(state \\ []) do
    :io.format "[commroom] starting...~n"
    { :ok, state }
  end


  defp handle_event(:unit_created, {unit_id, builder}) do
    :io.format "[commroom] unit ~w created by ~w~n", [unit_id, builder]
  end
  defp handle_event(topic, data) do
    :io.format "[commroom] ~w: ~w!~n", [topic, data]
  end


  def handle_info({ :event, topic, data }, state) when is_integer(topic) do
    :io.format "[commroom] incoming raw event: topic ~w, payload ~s~n", [topic, data]
    { :noreply, state }
  end
  def handle_info({ :event, topic, data }, state) when is_atom(topic) do
    handle_event(topic, data)
    { :noreply, state }
  end
  def handle_info(:tick, state) do
    :io.format "[commroom] tick~n"
    { :noreply, state }
  end
  def handle_info(others, state) do
    :io.format "[commroom] unknown event ~s, ignoring~n", [others]
    { :noreply, state }
  end

end
