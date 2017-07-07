defmodule TccAI do
  @moduledoc false
  use Application
  require Logger

  def start(_type, _opts) do
    team_id = System.get_env("AI_NR") || 0

    thisname = String.to_atom "hq#{team_id}"
    :net_kernel.start [thisname, :longnames]

    cookie = String.to_atom "erlang_ai#{team_id}"
    enginename = {:foo, String.to_atom "#{cookie}@127.0.0.1"}
    Logger.info "cookie: #{cookie}"
    Logger.info "engine: #{inspect(enginename)}"

    :erlang.set_cookie node(), cookie
    Application.put_env(SpringRTS, :engine, enginename)

    port = 4000 + String.to_integer(team_id)
    {:ok, _pid} = Plug.Adapters.Cowboy.http TccAI.Web, [], port: port
    Logger.info "web port: #{port}"

    TccAI.Supervisor.start_link(%{:team_id=>team_id, :engine=>enginename})
  end

end
