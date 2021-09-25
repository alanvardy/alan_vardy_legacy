[
  retry: false,
  fix: true,
  tools: [
    {:format, command: "mix format", exit_status: false},
    {:credo, command: "mix credo --strict", deps: [:format]},
    {:cypress, command: "mix cypress.run", deps: [:format, :credo]},
    {:npm_test, enabled: false},
    {:ex_coveralls,
     command: "mix coveralls.html",
     require_files: ["test/test_helper.exs"],
     env: %{"MIX_ENV" => "test"},
     deps: [:format, :credo]},
    {:sobelow, command: "mix sobelow --config", deps: [:format, :credo]},
    {:ex_unit, command: "mix test", env: %{"MIX_ENV" => "test"}, deps: [:format, :credo]}
  ]
]
