defmodule MyProject.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_scrapper,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:floki, "~> 0.26"}
    ]
  end
end
