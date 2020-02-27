# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mazalika,
  ecto_repos: [Mazalika.Repo]

# Configures the endpoint
config :mazalika, MazalikaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hvab08c/4z/Ex2XnIueOUX+C2hI3aSY5A9HIPIpS8YXJigJJZ2LTjVCb2n6j5QJg",
  render_errors: [view: MazalikaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mazalika.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
