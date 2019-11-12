defmodule SchnappsWeb.PageController do
  use SchnappsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
