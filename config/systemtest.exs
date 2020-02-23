use Mix.Config
# We need to run a server during systemtest
config :alan_vardy, AlanVardyWeb.Endpoint,
  http: [port: 5000],
  server: true

config :alan_vardy, AlanVardy.Email, adapter: Bamboo.TestAdapter
config :alan_vardy, env: :systemtest
config :logger, level: :warn
