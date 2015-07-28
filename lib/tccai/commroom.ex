defmodule TccAI.CommRoom do
  use GenServer

  def start_link(opts \\ []) do
    :gen_server.start_link({ :local, :commroom }, __MODULE__, [], opts)
    #:gen_server.start_link(__MODULE__, :ok, [])
  end

  def init(state \\ []) do
    :io.format "starting commroom now~n"
    { :ok, state }
  end

  def handle_info({ :event, topic, data }, state) do
    :io.format "incoming event: topic ~i, payload ~s~n", [topic, data]
    { :noreply, state }
  end
  def handle_info(:tick, state) do
    :io.format "tick~n"
    { :noreply, state }
  end
  def handle_info(others, state) do
    :io.format "unknown event ~s, ignoring~n", [others]
    { :noreply, state }
  end

end
