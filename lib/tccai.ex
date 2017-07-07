defmodule TccAI do
  @moduledoc false
  use Application

  def start(_type, _opts) do
    team_id = case System.get_env("AI_NR") do
      nil -> 0
      x -> x
    end

    thisname = String.to_atom "hq#{team_id}"
    :net_kernel.start [thisname, :longnames]

    cookie = String.to_atom "erlang_ai#{team_id}"
    enginename = {:foo, String.to_atom "#{cookie}@127.0.0.1"}
    IO.inspect cookie
    IO.inspect enginename

    :erlang.set_cookie node(), cookie
    Application.put_env(SpringRTS, :engine, enginename)

    {:ok, _pid} = Plug.Adapters.Cowboy.http TccAI.Web, []

    TccAI.Supervisor.start_link(%{:team_id=>team_id, :engine=>enginename})
  end

end
