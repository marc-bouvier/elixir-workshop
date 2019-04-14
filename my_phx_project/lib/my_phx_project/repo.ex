defmodule MyPhxProject.Repo do
  use Ecto.Repo,
    otp_app: :my_phx_project,
    adapter: Ecto.Adapters.Postgres
end
