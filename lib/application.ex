defmodule Scraper.Application do
  use Application

  def start(_type, _args) do
    weapon_names = Scraper.scrape_weapon_names()
    Enum.each(weapon_names, &IO.puts/1)
    {:ok, self()}
  end
end
