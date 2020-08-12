[
  ## all available options with default values (see `mix check` docs for description)
  # skipped: true,
  # exit_status: true,
  # parallel: true,

  ## list of tools (see `mix check` docs for defaults)
  tools: [
    ## curated tools may be disabled (e.g. the check for compilation warnings)
    # {:compiler, false},

    ## ...or adjusted (e.g. use one-line formatter for more compact credo output)
    # {:credo, command: "mix credo --format oneline"},

    ## custom new tools may be added (mix tasks or arbitrary commands)
    # {:my_mix_check, command: "mix release", env: %{"MIX_ENV" => "prod"}},
    # {:my_arbitrary_check, command: "npm test", cd: "assets"},
    {:format, command: "mix format", exit_status: false},
    {:credo, command: "mix credo --strict", deps: [:format]},
    {:cypress, command: "mix cypress.run", deps: [:format, :credo]},
    {:ex_coveralls,
     command: "mix coveralls.html",
     require_files: ["test/test_helper.exs"],
     env: %{"MIX_ENV" => "test"},
     deps: [:format, :credo]},
    {:sobelow, command: "mix sobelow --config", deps: [:format, :credo]},
    {:ex_unit, command: "mix test", env: %{"MIX_ENV" => "test"}, deps: [:format, :credo]}

    # {:my_arbitrary_script, command: ["my_script", "argument with spaces"], cd: "scripts"}
  ]
]
