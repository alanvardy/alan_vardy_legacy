# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :alan_vardy, AlanVardyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "G7pRZcqLSm+gvLgl85R1d05YfD6Xxyp+uJE1Xozuw2oAj+XPLPnjvYlgGv+HKwaP",
  render_errors: [view: AlanVardyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AlanVardy.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :alan_vardy, AlanVardy.Email, adapter: Bamboo.LocalAdapter

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
