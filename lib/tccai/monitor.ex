defmodule TccAI.Monitor do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/hello" do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, "<h1>Hello world</h1>")
  end

  get "/economy" do
    alias TccAI.Simple
    conn
    |> put_resp_content_type("text/plain")
    #|> send_resp(200, inspect(Simple.economy_overview))
    |> send_resp(200, Poison.Encoder.encode(Simple.economy_overview, []))
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end
