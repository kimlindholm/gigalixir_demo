# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gigalixir_demo,
  ecto_repos: [GigalixirDemo.Repo]

# Configures the endpoint
config :gigalixir_demo, GigalixirDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qn8DHoUI8774+Ec6ZLg4UoiL2B4GX5k8x2qz3glrTPzGdcoar9/dzP3VDDJcrNhj",
  render_errors: [view: GigalixirDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GigalixirDemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
