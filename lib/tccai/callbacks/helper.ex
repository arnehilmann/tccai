defmodule TccAI.Callbacks.Helper do
  @tmo 1000

  def receive_response() do
    receive do
      {:ok, response} -> response
      any_other ->
        IO.inspect any_other
        raise 'unknown response'
    after
        @tmo -> raise 'timeout'
    end
  end
end
