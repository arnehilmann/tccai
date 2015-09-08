defmodule TccAI.CommRoom do
  use GenServer
  require Logger

  @name :commroom

  def get_engine() do
    GenServer.call @name, :engine
  end


  def poll() do
    receive do
    after 1000 ->
      send Application.get_env(SpringRTS, :engine), {:register, self()}
    end
    poll
  end


  def start_link(_opts \\ []) do
    {:ok, emitter} = GenEvent.start_link()
    GenEvent.add_handler(emitter, TccAI.Emitter, [])
    #spawn_link poll
    :gen_server.start_link({ :local, @name }, __MODULE__, %{:emitter=>emitter, :engine=>nil}, [])
    #:gen_server.start_link({ :local, @name }, __MODULE__, [], [])
  end


  def init(state) do
    Logger.info "[commroom] starting..."
    { :ok, state }
  end


  def handle_call(:engine, _from, state) do
    {:reply, {:ok, state[:engine]}, state}
  end


  def handle_info({ :event, topic, data }, state) when is_integer(topic) do
    Logger.info :io_lib.format "[commroom] incoming raw event: topic ~w, payload ~s", [topic, data]
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
    Logger.warn :io_lib.format "[commroom] unknown response ~s: ~w", [selector, data]
    { :noreply, state }
  end
  def handle_info(others, state) do
    Logger.warn :io_lib.format "[commroom] unknown event ~s, ignoring", [others]
    { :noreply, state }
  end

end
