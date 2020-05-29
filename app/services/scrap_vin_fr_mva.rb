require 'open-uri'
require 'nokogiri'

class ScrapVinFrMva
  def call
    urls_bottle = get_url_botlle
    get_bottle_info(urls_bottle)
  end

  private
  def get_bottle_info(urls_bottle)
    infos_bottle = []
    urls_bottle.each do |url|
      html_file = open(url).read
      html_doc = Nokogiri::HTML(html_file)
      domain = html_doc.search(".product-title h2")[0].text
      vintage = html_doc.search(".product-title").search("p").text.split(" - ")[0].to_i
      vintage = html_doc.search(".product-title").search("p").text.split(" - ")[0].to_i
      price = html_doc.search(".price").search("h2").to_i
      grape_variety = html_doc.search(".wine-type p").text.strip.split("Al")[0].split("Cépage(s)")[1].strip
      characteristics = html_doc.search(".wine-taste p")[1].text.strip
      path_image = html_doc.search(".product-main-image img").attribute("src").value
      url_image = "https://www.monvinamoi.com#{path_image}"
      info_bottle = { domain: domain, vintage: vintage, color: "", grape_variety: grape_variety,
                      aroma: "", characteristics: characteristics, country: "france",
                      region: region, url_img: url_image}
      infos_bottle << info_bottle
    end
    infos_bottle
  end



  def get_url_botlle
    counter = 1
    url = "https://www.monvinamoi.com/vins-6.html?page=#{counter}"
    urls_bottle = []
    6.times do
      html_file = open(url).read
      html_doc = Nokogiri::HTML(html_file)
      html_doc.search(".products-row").search("a").each do |element|
        url_bottle = element.attribute("href").value
        urls_bottle << url_bottle
      end
      counter += 1
    end
    urls_bottle
  end
end

