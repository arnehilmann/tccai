defmodule TccAI.CommRoom do
  @moduledoc false
  use GenServer
  require Logger

  @name :commroom

  def state do
    GenServer.call @name, :state
  end

  def engine_pid do
    GenServer.call @name, :engine_pid
  end

  def register do
    GenServer.call @name, :register
  end


  def start_link(opts) do
    {:ok, emitter} = GenEvent.start_link()
    GenEvent.add_handler(emitter, TccAI.Emitter, [])
    opts = Map.put opts, :emitter, emitter
    opts = Map.put opts, :engine_pid, nil
    :gen_server.start_link({ :local, @name }, __MODULE__, opts, [])
  end


  def init(state) do
    Logger.info "[commroom] starting..."
    spawn_link fn -> try_initial_connect() end
    { :ok, state }
  end


  def try_initial_connect do
    register()
    receive do
      :timeout ->
        try_initial_connect()
      :ok ->
        :ok
    end
  end

  def handle_call(:register, _from, state) do
    send state.engine, {:register, self()}
    receive do
      {:ok, pid} ->
        Logger.info "[commroom] registered for events from #{inspect pid}"
        {:reply, :ok, %{state | :engine_pid => pid}}
    after 1000 ->
      # Logger.info "[commroom] deregistered from engine due to timeout"
      {:reply, :timeout, %{state | :engine_pid => nil}}
    end
  end

  def handle_call(:engine_pid, _from, state) do
    {:reply, {:ok, state.engine_pid}, state}
  end

  def handle_call(:state, _from, state) do
    {:reply, {:ok, state}, state}
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
