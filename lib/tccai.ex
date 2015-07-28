defmodule TccAI do
  use Application

  def start(_type, opts \\ []) do
    TccAI.Supervisor.start_link(opts)
  end
end
