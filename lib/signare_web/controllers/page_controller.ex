defmodule SignareWeb.PageController do
  use SignareWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
