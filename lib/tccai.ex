defmodule TccAI do
  use Application

  def start(_type, _opts) do
    team_id = 0

    cookie = String.to_atom "erlang_ai#{team_id}"
    thisname = String.to_atom "hq_erlang_ai#{team_id}"
    {:ok, thishostname} = :inet.gethostname
    enginenode = String.to_atom "erlang_ai#{team_id}@#{thishostname}"
    enginename = {:foo, enginenode}

    :net_kernel.start [thisname, :shortnames]
    :erlang.set_cookie node(), cookie
    Application.put_env(SpringRTS, :engine, enginename)

    TccAI.Supervisor.start_link(%{:team_id=>team_id, :engine=>enginename})
  end

end
