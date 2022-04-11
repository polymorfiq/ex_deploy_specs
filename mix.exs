defmodule ExDeploySpecs.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_deploy_specs,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      dialyzer: [
        plt_file: {:no_warn, "priv/plts/dialyzer.plt"}
      ],
      deps: deps(),
      name: "ExDeploySpecs",
      description: "A library for helping describle the deploy specifications for modules",
      source_url: "https://github.com/polymorfiq/ex_deploy_specs"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:credo, "~> 1.6", only: [:dev]},
      {:dialyxir, "~> 1.1", only: [:dev]},
      {:ex_doc, "> 0.0.0", only: [:dev]}
    ]
  end
end
