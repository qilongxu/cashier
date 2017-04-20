defmodule Cashier.Mixfile do
  use Mix.Project

  def project do
    [app: :cashier,
     version: "0.4.0",
     elixir: "~> 1.4",
     description: description(),
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison],
     mod: {Cashier, []}]
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
      {:gen_stage, "~> 0.11.0"},

      # dev deps
      {:ex_doc, ">= 0.14.0", only: :dev},
    ]
  end

  defp description do
    "Cashier is an Elixir library that aims to be an easy to use payment gateway, whilst offering the fault tolerance and scalability benefits of being built on top of Erlang/OTP"
  end

  defp package do
    [name: :cashier,
     maintainers: ["swelham"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/swelham/cashier"}]
  end
end
