use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :alan_vardy, AlanVardyWeb.Endpoint,
  http: [port: 4002],
  server: false

config :alan_vardy, AlanVardy.Email, adapter: Bamboo.TestAdapter

# Print only warnings and errors during test
config :logger, level: :warn

config :alan_vardy, :env, :test
