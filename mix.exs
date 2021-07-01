defmodule AlanVardy.MixProject do
  use Mix.Project

  def project do
    [
      app: :alan_vardy,
      version: "0.1.0",
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {AlanVardy.Application, []},
      extra_applications: [:logger, :runtime_tools, :recaptcha]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.5"},
      {:phoenix_pubsub, "~> 2.0"},
      {:ecto_sql, "~> 3.5"},
      {:phoenix_html, "~> 2.14"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:gettext, "~> 0.18"},
      {:jason, "~> 1.2"},
      {:plug, "~> 1.10"},
      {:plug_cowboy, "~> 2.3"},
      {:ex_effective_bootstrap,
       git: "https://github.com/alanvardy/ex_effective_bootstrap.git", branch: "update_dependencies"},
      {:bamboo, "~> 1.5"},
      {:recaptcha, "~> 3.0"},
      {:postex, "~> 0.1"},
      {:timex, "~> 3.6"},
      {:ecto, "~> 3.5"},
      {:earmark_parser, "~> 1.4.0"},
      # Tooling
      {:ex_check, "~> 0.12", only: :dev, runtime: false},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
      {:sobelow, "~> 0.10", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.13", only: :test, runtime: false},
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end

  defp aliases do
    [
      "cypress.open": ["cmd ./cypress-open.sh"],
      "cypress.run": ["cmd ./cypress-run.sh"]
    ]
  end
end
