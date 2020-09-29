# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :signare,
  ecto_repos: [Signare.Repo]

# Configures the endpoint
config :signare, SignareWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UZ/keP40c65MMA7Tw+s9xGonn8AjUeFfo2G05jtWu0T8vMfDYAEuGreYSv6vO3x4",
  render_errors: [view: SignareWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Signare.PubSub,
  live_view: [signing_salt: "/vIGrdWR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
