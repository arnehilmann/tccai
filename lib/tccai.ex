defmodule TccAI do
  use Application

  def start(_type, _opts) do
    team_id = 0

    thisname = String.to_atom "hq_erlang_ai#{team_id}"
    :net_kernel.start [thisname, :shortnames]
    {:ok, thishostname} = :inet.gethostname

    cookie = String.to_atom "erlang_ai#{team_id}"
    enginenode = String.to_atom "erlang_ai#{team_id}@#{thishostname}"
    enginename = {:foo, enginenode}

    :erlang.set_cookie node(), cookie
    Application.put_env(SpringRTS, :engine, enginename)

    {:ok, _pid} = Plug.Adapters.Cowboy.http TccAI.Monitor, []

    TccAI.Supervisor.start_link(%{:team_id=>team_id, :engine=>enginename})
  end

end
