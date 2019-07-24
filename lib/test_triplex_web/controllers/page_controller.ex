defmodule TestTriplexWeb.PageController do
  use TestTriplexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
