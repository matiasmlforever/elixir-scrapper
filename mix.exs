defmodule Scraper.MixProject do
  use Mix.Project

  def project do
    [
      app: :scraper,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Scraper.Application, []}
    ]
  end

  defp deps do
    [
      {:crawly, "~> 0.15.0"},
      {:floki, "~> 0.34.0"}
    ]
  end
end
