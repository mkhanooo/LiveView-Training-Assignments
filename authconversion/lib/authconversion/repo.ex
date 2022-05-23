defmodule Authconversion.Repo do
  use Ecto.Repo,
    otp_app: :authconversion,
    adapter: Ecto.Adapters.Postgres
end
