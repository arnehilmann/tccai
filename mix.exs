defmodule TccAI.Mixfile do
  use Mix.Project

  def project do
    [app: :tccai,
     version: "0.0.1",
     elixir: "> 1.0.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: TccAI.Cli],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :cowboy, :plug],
     registered: [:commroom],
     mod: { TccAI, [] }]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
     {:cowboy, "> 0.0.0"},
     {:plug, "> 0.0.0"},
     {:poison, "> 0.0.0"},
     # {:credo, "~> 0.3", only: [:dev, :test]},
     {:dogma, "~> 0.1", only: :dev},
    ]
  end
end
