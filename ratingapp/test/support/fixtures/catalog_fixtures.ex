defmodule Ratingapp.CatalogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ratingapp.Catalog` context.
  """

  @doc """
  Generate a game.
  """
  def game_fixture(attrs \\ %{}) do
    {:ok, game} =
      attrs
      |> Enum.into(%{
         game_name: "some  game_name"
      })
      |> Ratingapp.Catalog.create_game()

    game
  end
end
