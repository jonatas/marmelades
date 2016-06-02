defmodule Marmelades.PageController do
  use Marmelades.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
