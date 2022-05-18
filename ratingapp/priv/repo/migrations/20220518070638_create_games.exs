defmodule Ratingapp.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :game_name, :string

      timestamps()
    end

    create unique_index(:games, [:game_name])
  end
end
