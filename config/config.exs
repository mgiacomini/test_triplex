# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :test_triplex,
  ecto_repos: [TestTriplex.Repo]

config :triplex, repo: TestTriplex.Repo

# Configures the endpoint
config :test_triplex, TestTriplexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oFVkNaelz4oOdeABewXXzSBdRQf0SKOCU8w5y6+k/5N1pGyZYJ2WxES5xKunYV4x",
  render_errors: [view: TestTriplexWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestTriplex.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
