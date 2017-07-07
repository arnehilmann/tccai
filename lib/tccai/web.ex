defmodule TccAI.StaticContent do
  @moduledoc "serve static content"
  use Plug.Builder

  plug Plug.Static, at: "/", from: :tccai
  # plug :not_found

  def not_found(conn, _) do
    send_resp(conn, 404, "not found")
  end
end

defmodule TccAI.Web do
  @moduledoc "web service"
  use Plug.Router

  plug Plug.Logger, log: :debug
  plug :match
  plug :dispatch

  get "/hello" do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, "<h1>Hello world</h1>")
  end

  get "/resources" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, Poison.Encoder.encode(TccAI.Resources.current, []))
  end

  get "/units" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, Poison.Encoder.encode(TccAI.Units.overview, []))
  end

  get "/map" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, Poison.Encoder.encode(TccAI.Map.get_contour_map(), []))
  end

  forward "/", to: TccAI.StaticContent
end
