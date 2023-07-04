defmodule Scraper do
  @url "https://starwars.fandom.com/wiki/Category:Mandalorian_weapons"

  def scrape_weapon do
    response = Crawly.fetch(@url)

    {:ok, document} = Floki.parse_document(response.body)

    weapon_names =
      document
      |> Floki.find(".category-page__members-for-char a")
      |> Enum.map(&parse_weapon_info/1)

    Enum.uniq(weapon_names)
  end

  defp parse_weapon_info(element) do
    title = Floki.attribute(element, "title")
    url = Floki.attribute(element, "href")
    {title, url}
  end
end
