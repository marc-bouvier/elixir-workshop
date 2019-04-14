use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :my_phx_project, MyPhxProjectWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :my_phx_project, MyPhxProject.Repo,
  username: "postgres",
  password: "postgres",
  database: "my_phx_project_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
