defmodule MyPhxProjectWeb.PageController do
  use MyPhxProjectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
