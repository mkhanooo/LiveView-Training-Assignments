defmodule RatingappWeb.PageController do
  use RatingappWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
