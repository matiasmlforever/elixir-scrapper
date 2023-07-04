defmodule Scraper.Application do
  use Application

  def start(_type, _args) do
    weapons = Scraper.scrape_weapon()
    Enum.each(weapons, &print_weapon_info/1)
    {:ok, self()}
  end

  defp print_weapon_info({title, url}) do
    IO.puts("Title: #{title}")
    IO.puts("URL: #{url}")
    IO.puts("--------------------------------")
  end
end
