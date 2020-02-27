defmodule Mazalika.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Mazalika.Repo,
      # Start the endpoint when the application starts
      MazalikaWeb.Endpoint
      # Starts a worker by calling: Mazalika.Worker.start_link(arg)
      # {Mazalika.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Mazalika.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    MazalikaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
