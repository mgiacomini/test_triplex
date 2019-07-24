defmodule TestTriplex.Repo do
  use Ecto.Repo,
    otp_app: :test_triplex,
    adapter: Ecto.Adapters.Postgres
end
