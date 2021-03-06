defmodule HedwigApiAi.Mixfile do
  use Mix.Project

  def project do
    [app: :hedwig_api_ai,
     version: "0.1.0-beta.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: "Bringing NLU to hedwig with a little help from @api_ai"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :ex_api_ai],
     mod: {HedwigApiAi, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_api_ai, github: "enilsen16/ex_api_ai"},
      {:hedwig, github: "hedwig-im/hedwig"}
    ]
  end

  defp package do
    [
      maintainers: ["Erik Nilsen"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/enilsen16/hedwig_api_ai",
      }
    ]
  end
end
