defmodule TccAI.Supervisor do
  use Supervisor

  def start_link(opts \\ []) do
    :supervisor.start_link(__MODULE__, opts)
  end

  def init(_opts) do
    children = [worker(TccAI.CommRoom, [])]
    supervise children, strategy: :one_for_one
  end
end
