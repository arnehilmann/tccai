defmodule TccAI do
  use Application

  def start(_type, opts \\ []) do
    IO.puts "Hello World"
    Application.put_env(SpringRTS, :engine, {:foo, :'erlang_ai0@Arnes-Manjaro'})
    TccAI.Supervisor.start_link(opts)
  end

end
