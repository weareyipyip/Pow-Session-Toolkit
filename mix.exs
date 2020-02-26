defmodule PowSessionToolkit.MixProject do
  use Mix.Project

  def project do
    [
      app: :pow_session_toolkit,
      version: "0.1.5",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: """
      Session management implementation for POW
      """,
      package: [
        name: "pow_session_toolkit",
        licenses: ["apache-2.0"],
        links: %{github: "https://github.com/weareyipyip/Pow-Session-Toolkit"},
        source_url: "https://github.com/weareyipyip/Pow-Session-Toolkit"
      ],
      source_url: "https://github.com/weareyipyip/Pow-Session-Toolkit",
      name: "Pow Session Toolkit",
      docs: [
        source_ref: "master",
        extras: ["./README.md"],
        main: "readme"
      ],
      dialyzer: [
        plt_add_apps: []
      ]
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
      # meta / dev dependencies
      {:ex_doc, "~> 0.21", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0-rc.6", only: [:dev, :test], runtime: false},

      # application dependencies
      {:plug, "~> 1.8"},
      {:pow, ">= 1.0.15"},
      {:jason, "~> 1.1"}
    ]
  end
end
