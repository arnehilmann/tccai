defmodule TccAI do
  use Application

  def start(_type, opts \\ []) do
    TccAI.Supervisor.start_link(opts)
  end

  def cnode() do
    {:foo, :erlang_ai0@elk}
  end

end
