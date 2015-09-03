defmodule TccAI.CommRoom do
  use GenServer
  require Logger

  @name :commroom

  def get_engine() do
    GenServer.call @name, :engine
  end

  def start_link(opts \\ []) do
    :gen_server.start_link({ :local, @name }, __MODULE__, [], opts)
  end


  def init(state \\ %{:engine=>nil}) do
    Logger.info "[commroom] starting..."
    { :ok, state }
  end


  defp handle_event(:unit_created, {unit_id, builder}) do
    Logger.info "[commroom] unit ~w created by ~w~n", [unit_id, builder]
  end
  defp handle_event(topic, data) do
    Logger.info :io_lib.format "[commroom] ~w: ~w!", [topic, data]
  end

  def handle_call(:engine, _from, state) do
    {:reply, {:ok, state[:engine]}, state}
  end

  def handle_info({ :event, topic, data }, state) when is_integer(topic) do
    Logger.info :io_lib.format "[commroom] incoming raw event: topic ~w, payload ~s", [topic, data]
    { :noreply, state }
  end
  def handle_info({ :event, topic, data }, state) when is_atom(topic) do
    handle_event(topic, data)
    { :noreply, state }
  end
  def handle_info({:tick, frame, from}, state) do
    #Logger.debug :io_lib.format "[commroom] tick ~w from ~w", [frame, from]
    { :noreply, %{:engine=>from} }
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
