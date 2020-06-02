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
    create!(region: regions_list, user_id: answer.user_id)

    if answer.america_list == "United States"
      american_country = "United States"
    elsif answer.america_list == "Chile"
      american_country = "Chile"
    else
      american_country = "Argentina"
    end

    if american_country
      create!(country: america_list, user_id: answer.user_id)
    end


    if answer.europe_list == "France"
      european_list = "France"
    elsif answer.europe_list == "Italy"
      european_list = "Italy"
    elsif answer.europe_list == "Spain"
      european_list = "Spain"
    elsif answer.europe_list == "Portugal"
      european_list = "Portugal"
    elsif answer.europe_list == "Switzerland"
      european_list = "Switzerland"
    elsif answer.europe_list == "Germany"
      european_list = "Germany"
    else
      european_list = "Greece"
    end
    create!(country: european_list, user_id: answer.user_id)

    if answer.oceania_list == "Australia"
      oceanian_list = "Australia"
    else
      oceanian_list = "New-Zealand"
    end
    create!(country: oceanian_list, user_id: answer.user_id)

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
    create!(selected_aroma: aromas_list, user_id: answer.user_id)

    if answer.grape_reds == "Cabernet Sauvignon"
      grape_red = "Cabernet Sauvignon"
    elsif answer.grape_reds == "Cabernet Franc"
      grape_red = "Cabernet Franc"
    elsif answer.grape_reds == "Merlot"
      grape_red = "Merlot"
    elsif answer.grape_reds == "Pinot Noir"
      grape_red = "Pinot Noir"
    elsif answer.grape_reds == "Gamay"
      grape_red = "Gamay"
    elsif answer.grape_reds == "Syrah"
      grape_red = "Syrah"
    elsif answer.grape_reds == "Grenache"
      grape_red = "Grenache"
    elsif answer.grape_reds == "Cinsault"
      grape_red = "Cinsault"
    elsif answer.grape_reds == "Malbec"
      grape_red = "Malbec"
    else
      grape_red = "Sangiovese"
    end
    if grape_red
      create!(selected_grape: grape_red, user_id: answer.user_id)
    end

    if answer.grape_roses == "Syrah"
      grape_rose = "Syrah"
    elsif answer.grape_roses == "Grenache"
      grape_rose = "Grenache"
    elsif answer.grape_roses == "Cinsault"
      grape_rose = "Cinsault"
    else
      grape_rose = "Cabernet d\'Anjou"
    end
    if grape_rose
      create!(selected_grape: grape_rose, user_id: answer.user_id)
    end


    if answer.grape_sweets == "Chardonnay"
      grape_sweet = "Chardonnay"
    elsif answer.grape_sweets == "Muscadelle"
      grape_sweet = "Muscadelle"
    elsif answer.grape_sweets == "Sémillion"
      grape_sweet = "Sémillion"
    elsif answer.grape_sweets == "Gewurztraminer"
      grape_sweet = "Gewurztraminer"
    elsif answer.grape_sweets == "Riesling"
      grape_sweet = "Riesling"
    elsif answer.grape_sweets == "Chenin"
      grape_sweet = "Chenin"
    else
      grape_sweet = "Furmint"
    end
    if grape_sweet
      create!(selected_grape: grape_sweet, user_id: answer.user_id)
    end

    if answer.grape_whites == "Chardonnay"
      grape_white = "Chardonnay"
    elsif answer.grape_whites == "Sauvignon"
      grape_white = "Sauvignon"
    elsif answer.grape_whites == "Chenin"
      grape_white = "Chenin"
    elsif answer.grape_whites == "Gewurztraminer"
      grape_white = "Gewurztraminer"
    elsif answer.grape_whites == "Riesling"
      grape_white = "Riesling"
    elsif answer.grape_whites == "Viognier"
      grape_white = "Viognier"
    elsif answer.grape_whites == "Ugni Blanc"
      grape_white = "Ugni Blanc"
    elsif answer.grape_whites == "Pinot Gris"
      grape_white = "Pinot Gris"
    else
      grape_white = "Sémillion"
    end
    if grape_white
      create!(selected_grape: grape_white, user_id: answer.user_id)
    end

    if answer.grape_ports == "Touriga Franca"
      grape_port = "Touriga Franca"
    elsif answer.grape_ports == "Tinta Roriz"
      grape_port = "Tinta Roriz"
    elsif answer.grape_ports == "Tinta Barroca"
      grape_port = "Tinta Barroca"
    elsif answer.grape_ports == "Touriga Nacional"
      grape_port = "Touriga Nacional"
    else
      grape_port = "Tinto Cao"
    end
    if grape_port
      create!(selected_grape: grape_port, user_id: answer.user_id)
    end


    if answer.grape_sparklings == "Chardonnay"
      grape_sparkling = "Chardonnay"
    elsif answer.grape_sparklings == "Pinot Noir"
      grape_sparkling = "Pinot Noir"
    elsif answer.grape_sparklings == "Pinot Meunier"
      grape_sparkling = "Pinot Meunier"
    elsif answer.grape_sparklings == "Macabeo"
      grape_sparkling = "Macabeo"
    elsif answer.grape_sparklings == "Monastrell"
      grape_sparkling = "Monastrell"
    elsif answer.grape_sparklings == "Garnacha"
      grape_sparkling = "Garnacha"
    elsif answer.grape_sparklings == "Muscat Blanc à Petits Grains"
      grape_sparkling = "Muscat Blanc à Petits Grains"
    elsif answer.grape_sparklings == "Glera"
      grape_sparkling = "Glera"
    else
      grape_sparkling = "Riesling"
    end
    if grape_sparkling
      create!(selected_grape: grape_sparkling, user_id: answer.user_id)
    end
  end
end
