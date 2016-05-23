defmodule TccAI.Cli do
  @moduledoc false
  def main(args) do
    number = List.first args

    IO.puts "Hello, #{number}!"

    my_name = :'hp_0'
    cookie = :'erlang_ai0'
    remote_name = cookie

    :net_kernel.start [my_name, :shortnames]
    :erlang.set_cookie(node(), cookie)
    Application.put_env(SpringRTS, :engine, remote_name)

    :timer.sleep :infinity
  end
end
