defmodule DanubeErp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      DanubeErpWeb.Telemetry,
      DanubeErp.Repo,
      {DNSCluster, query: Application.get_env(:danube_erp, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: DanubeErp.PubSub},
      # Start a worker by calling: DanubeErp.Worker.start_link(arg)
      # {DanubeErp.Worker, arg},
      # Start to serve requests, typically the last entry
      DanubeErpWeb.Endpoint
    ]

    # Cargar plugins dinámicos al iniciar la aplicación
    DanubeErp.Plugins.DynamicLoader.load_plugins()

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DanubeErp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DanubeErpWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
