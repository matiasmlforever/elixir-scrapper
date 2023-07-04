defmodule Scraper do
  @url "https://starwars.fandom.com/wiki/Category:Mandalorian_weapons"

  def scrape_weapon_names do
    response = Crawly.fetch(@url)

    {:ok, document} = Floki.parse_document(response.body)

    weapon_names =
      document
      |> Floki.find(".category-page__members-for-char a")
      |> Floki.attribute("title")
      |> Enum.filter(&(&1 != nil))

    IO.inspect(weapon_names)
    weapon_names
  end
end
