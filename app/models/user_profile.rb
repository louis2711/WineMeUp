class UserProfile < ApplicationRecord
  belongs_to :user

  # def self.create_from_answer(answer)
  #   if answer.question_colour == "Red"
  #     color = "Red"
  #   else
  #     color = "White"
  #   end
  #   create!(color: color, user_id: answer.user_id)

  def self.create_from_answer(answer)
    if answer.question_colour == "Red"
      color = "Red"
    elsif answer.question_colour == "White"
      color = "White"
    elsif answer.question_colour == "Rosé"
      color = "Rosé"
    elsif answer.question_colour == "Sweet"
      color = "Sweet"
    elsif answer.question_colour == "Port"
      color = "Port"
    else
      color = "Sparkling"
    end
    create!(color: color, user_id: answer.user_id)

    if answer.question_vineyard_management == "Bio"
      vineyard_management = "Bio"
    elsif answer.question_vineyard_management == "Vegan"
      vineyard_management = "Vegan"
    elsif answer.question_vineyard_management == "Natural"
      vineyard_management = "Natural"
    else
      vineyard_management = ""
    end
    create!(vineyard_management: vineyard_management, user_id: answer.user_id)

    if answer.regions_list == "America"
      regions_list = "America"
    elsif answer.regions_list == "Europe"
      regions_list = "Europe"
    elsif answer.regions_list == "Oceania"
      regions_list = "Oceania"
    else
      regions_list = "Africa"
    end
    create!(regions_list: region, user_id: answer.user_id)

    if answer.america_list == "United States"
      america_list = "United States"
    elsif answer.america_list == "Chile"
      america_list = "Chile"
    else
      america_list = "Argentina"
    end
    create!(america_list: country, user_id: answer.user_id)

    if answer.europe_list == "France"
      europe_list = "France"
    elsif answer.europe_list == "Italy"
      europe_list = "Italy"
    elsif answer.europe_list == "Spain"
      europe_list = "Spain"
    elsif answer.europe_list == "Portugal"
      europe_list = "Portugal"
    elsif answer.europe_list == "Switzerland"
      europe_list = "Switzerland"
    elsif answer.europe_list == "Germany"
      europe_list = "Germany"
    else
      europe_list = "Greece"
    end
    create!(europe_list: country, user_id: answer.user_id)

    if answer.oceania_list == "Australia"
      oceania_list = "Australia"
    else
      oceania_list = "New-Zealand"
    end
    create!(oceania_list: country, user_id: answer.user_id)

    if answer.aromas_list == "Fruit flavors"
      aromas_list = "Fruit flavors"
    elsif answer.aromas_list == "Herbal"
      aromas_list = "Herbal"
    elsif answer.aromas_list == "Floral flavors"
      aromas_list = "Floral flavors"
    elsif answer.aromas_list == "Woody"
      aromas_list = "Woody"
    elsif answer.aromas_list == "Spicy"
      aromas_list = "Spicy"
    else
      aromas_list = "Mineral"
    end
    create!(aromas_list: selected_aroma, user_id: answer.user_id)

    if answer.grape_reds == "Cabernet Sauvignon"
      grape_reds = "Cabernet Sauvignon"
    elsif answer.grape_reds == "Cabernet Franc"
      grape_reds = "Cabernet Franc"
    elsif answer.grape_reds == "Merlot"
      grape_reds = "Merlot"
    elsif answer.grape_reds == "Pinot Noir"
      grape_reds = "Pinot Noir"
    elsif answer.grape_reds == "Gamay"
      grape_reds = "Gamay"
    elsif answer.grape_reds == "Syrah"
      grape_reds = "Syrah"
    elsif answer.grape_reds == "Grenache"
      grape_reds = "Grenache"
    elsif answer.grape_reds == "Cinsault"
      grape_reds = "Cinsault"
    elsif grape_reds == "Malbec"
      grape_reds = "Malbec"
    else
      grape_reds = "Sangiovese"
    end
    create!(grape_reds: selected_grape, user_id: answer.user_id)

    if answer.grape_roses == "Syrah"
      grape_roses = "Syrah"
    elsif answer.grape_roses == "Grenache"
      grape_roses = "Grenache"
    elsif answer.grape_roses == "Cinsault"
      grape_roses = "Cinsault"
    else
      grape_roses = "Cabernet d\'Anjou"
    end
    create!(grape_roses: selected_grape, user_id: answer.user_id)

    if answer.grape_sweets == "Chardonnay"
      grape_sweets = "Chardonnay"
    elsif answer.grape_sweets == "Muscadelle"
      grape_sweets = "Muscadelle"
    elsif answer.grape_sweets == "Sémillion"
      grape_sweets = "Sémillion"
    elsif answer.grape_sweets == "Gewurztraminer"
      grape_sweets = "Gewurztraminer"
    elsif answer.grape_sweets == "Riesling"
      grape_sweets = "Riesling"
    elsif answer.grape_sweets == "Chenin"
      grape_sweets = "Chenin"
    else
      grape_sweets = "Furmint"
    end
    create!(grape_sweets: selected_grape, user_id: answer.user_id)

    if answer.grape_whites == "Chardonnay"
      grape_whites = "Chardonnay"
    elsif answer.grape_whites == "Sauvignon"
      grape_whites = "Sauvignon"
    elsif answer.grape_whites == "Chenin"
      grape_whites = "Chenin"
    elsif answer.grape_whites == "Gewurztraminer"
      grape_whites = "Gewurztraminer"
    elsif answer.grape_whites == "Riesling"
      grape_whites = "Riesling"
    elsif answer.grape_whites == "Viognier"
      grape_whites = "Viognier"
    elsif answer.grape_whites == "Ugni Blanc"
      grape_whites = "Ugni Blanc"
    elsif answer.grape_whites == "Pinot Gris"
      grape_whites = "Pinot Gris"
    else
      grape_whites = "Sémillion"
    end
    create!(grape_whites: selected_grape, user_id: answer.user_id)

    if answer.grape_ports == "Touriga Franca"
      grape_ports = "Touriga Franca"
    elsif answer.grape_ports == "Tinta Roriz"
      grape_ports = "Tinta Roriz"
    elsif answer.grape_ports == "Tinta Barroca"
      grape_ports = "Tinta Barroca"
    elsif answer.grape_ports == "Touriga Nacional"
      grape_ports = "Touriga Nacional"
    else
      grape_ports = "Tinto Cao"
    end
    create!(grape_ports: selected_grape, user_id: answer.user_id)

    if answer.grape_sparklings == "Chardonnay"
      grape_sparklings = "Chardonnay"
    elsif answer.grape_sparklings == "Pinot Noir"
      grape_sparklings = "Pinot Noir"
    elsif answer.grape_sparklings == "Pinot Meunier"
      grape_sparklings = "Pinot Meunier"
    elsif answer.grape_sparklings == "Macabeo"
      grape_sparklings = "Macabeo"
    elsif answer.grape_sparklings == "Monastrell"
      grape_sparklings = "Monastrell"
    elsif answer.grape_sparklings == "Garnacha"
      grape_sparklings = "Garnacha"
    elsif answer.grape_sparklings == "Muscat Blanc à Petits Grains"
      grape_sparklings = "Muscat Blanc à Petits Grains"
    elsif answer.grape_sparklings == "Glera"
      grape_sparklings = "Glera"
    else
      grape_sparklings = "Riesling"
    end
    create!(grape_sparklings: selected_grape, user_id: answer.user_id)
  end
end
