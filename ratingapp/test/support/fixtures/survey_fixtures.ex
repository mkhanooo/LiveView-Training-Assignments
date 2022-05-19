defmodule Ratingapp.SurveyFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ratingapp.Survey` context.
  """

  @doc """
  Generate a rating.
  """
  def rating_fixture(attrs \\ %{}) do
    {:ok, rating} =
      attrs
      |> Enum.into(%{
         : "some  ",
        rating: 42
      })
      |> Ratingapp.Survey.create_rating()

    rating
  end
end
