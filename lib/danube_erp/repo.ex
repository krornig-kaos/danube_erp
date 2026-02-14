defmodule DanubeErp.Repo do
  use Ecto.Repo,
    otp_app: :danube_erp,
    adapter: Ecto.Adapters.Postgres
end
