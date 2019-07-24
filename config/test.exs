use Mix.Config

# Configure your database
config :test_triplex, TestTriplex.Repo,
  username: "mauriciogirardello",
  password: "",
  database: "test_triplex_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test_triplex, TestTriplexWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
