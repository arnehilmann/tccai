defmodule TccAI.CommRoom do
  use GenServer


  def start_link(_opts \\ []) do
    {:ok, emitter} = GenEvent.start_link()
    GenEvent.add_handler(emitter, TccAI.Emitter, [])
    :gen_server.start_link({ :local, :commroom }, __MODULE__, %{:emitter=>emitter}, [])
  end


  def init(state) do
    :io.format "[commroom] starting...~n"
    { :ok, state }
  end


  def handle_info({ :event, topic, data }, state) when is_integer(topic) do
    :io.format "[commroom] incoming raw event: topic ~w, payload ~s~n", [topic, data]
    { :noreply, state }
  end
  def handle_info({ :event, topic, data }, state) when is_atom(topic) do
    GenEvent.notify(state[:emitter], {topic, data})
    { :noreply, state }
  end
  def handle_info(:tick, state) do
    GenEvent.notify(state[:emitter], {:tick})
    { :noreply, state }
  end
  def handle_info({selector, data}, state) do
    :io.format "[commroom] unknown response ~s: ~w~n", [selector, data]
    { :noreply, state }
  end
  def handle_info(others, state) do
    :io.format "[commroom] unknown event ~s, ignoring~n", [others]
    { :noreply, state }
  end

end
