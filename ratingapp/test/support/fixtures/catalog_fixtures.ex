defmodule Ratingapp.CatalogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ratingapp.Catalog` context.
  """

  @doc """
  Generate a unique game game_name.
  """
  def unique_game_game_name, do: "some game_name#{System.unique_integer([:positive])}"

  @doc """
  Generate a game.
  """
  def game_fixture(attrs \\ %{}) do
    {:ok, game} =
      attrs
      |> Enum.into(%{
        game_name: unique_game_game_name()
      })
      |> Ratingapp.Catalog.create_game()

    game
  end
end
