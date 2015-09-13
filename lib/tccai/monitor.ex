defmodule TccAI.StaticServer do
  use Plug.Builder

  #plug Plug.Static, at: "/", from: "/home/arne/dev/tccai/"
  plug Plug.Static, at: "/", from: :tccai
  plug :not_found

  def not_found(conn, _) do
    send_resp(conn, 404, "not found")
  end
end

defmodule TccAI.Monitor do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/hello" do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, "<h1>Hello world</h1>")
  end

  get "/economy" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, Poison.Encoder.encode(TccAI.Simple.economy_overview, []))
  end

  get "/units" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, Poison.Encoder.encode(TccAI.Simple.units, []))
  end

  forward "/", to: TccAI.StaticServer
end

