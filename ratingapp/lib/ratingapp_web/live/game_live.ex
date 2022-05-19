defmodule RatingappWeb.GameLive do
  use RatingappWeb, :live_view

  def mount(_params, %{"user_token" => _user_token}, socket) do
    {:ok,
     socket
     |> assign(:games, Ratingapp.Catalog.list_games())}
  end

  def handle_event("Add", %{"game" => name}, socket) do
    IO.inspect(name)
    Ratingapp.Catalog.create_game(name)

    {:noreply, assign(socket, games: Ratingapp.Catalog.list_games())}
  end

  def handle_event("Delete", %{"id" => id}, socket) do
    Ratingapp.Catalog.get_game!(id)
    |> Ratingapp.Catalog.delete_game()

    {:noreply, assign(socket, games: Ratingapp.Catalog.list_games())}
  end
end
