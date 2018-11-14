defmodule GigalixirDemoWeb.PageController do
  use GigalixirDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
