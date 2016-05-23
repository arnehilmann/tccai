defmodule TccAI do
  @moduledoc false
  use Application

  def start(_type, _opts) do
    team_id = 0

    thisname = String.to_atom "hq#{team_id}"
    :net_kernel.start [thisname, :longnames]
    # :net_kernel.start [thisname, :shortnames]
    # {:ok, thishostname} = :inet.gethostname

    # cookie = String.to_atom "erlang_ai#{team_id}"
    cookie = String.to_atom "erlang_ai0"
    # enginenode = String.to_atom "erlang_ai#{team_id}@#{thishostname}"
    # enginename = {:foo, enginenode}
    enginename = {:foo, String.to_atom "#{cookie}@engine.spring"}
    # enginename = {:foo, String.to_atom "#{cookie}@8b13a4f211c2"}
    IO.inspect cookie
    IO.inspect enginename

    :erlang.set_cookie node(), cookie
    Application.put_env(SpringRTS, :engine, enginename)

    {:ok, _pid} = Plug.Adapters.Cowboy.http TccAI.Web, []

    TccAI.Supervisor.start_link(%{:team_id=>team_id, :engine=>enginename})
  end

end
