defmodule Ratingapp.Catalog.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "games" do
    field :game_name, :string

    timestamps()
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:game_name])
    |> validate_required([:game_name])
    |> unique_constraint(:game_name)
  end
end
