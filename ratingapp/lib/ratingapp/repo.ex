defmodule Ratingapp.Repo do
  use Ecto.Repo,
    otp_app: :ratingapp,
    adapter: Ecto.Adapters.Postgres
end
