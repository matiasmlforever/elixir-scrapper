defmodule Scraper.Application do
  use Application

  def start(_type, _args) do
    weapon_names = Scraper.scrape_weapon_names()
    Enum.each(weapon_names, &print_weapon_info/1)
    {:ok, self()}
  end

  defp print_weapon_info({title, url}) do
    IO.puts("Title: #{title}")
    IO.puts("URL: #{url}")
    IO.puts("--------------------------------")
  end
end
