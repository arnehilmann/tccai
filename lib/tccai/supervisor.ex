defmodule TccAI.Supervisor do
  @moduledoc false
  use Supervisor

  def start_link(opts \\ []) do
    :supervisor.start_link(__MODULE__, opts)
  end

  def init(opts) do
    children = [worker(TccAI.CommRoom, [opts])]
    supervise children, strategy: :one_for_one
  end
end
