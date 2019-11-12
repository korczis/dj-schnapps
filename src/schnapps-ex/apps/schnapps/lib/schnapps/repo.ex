defmodule Schnapps.Repo do
  use Ecto.Repo,
    otp_app: :schnapps,
    adapter: Ecto.Adapters.Postgres
end
