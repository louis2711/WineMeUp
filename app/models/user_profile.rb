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
    #create!(color: color, user_id: answer.user_id)

    if answer.question_vineyard_management == "Bio"
      vineyard_management = "Bio"
    elsif answer.question_vineyard_management == "Vegan"
      vineyard_management = "Vegan"
    elsif answer.question_vineyard_management == "Natural"
      vineyard_management = "Natural"
    else
      vineyard_management = ""
    end
    #create!(vineyard_management: vineyard_management, user_id: answer.user_id)

    if answer.regions_list == "America"
      regions = "America"
    elsif answer.regions_list == "Europe"
      regions = "Europe"
    elsif answer.regions_list == "Oceania"
      regions = "Oceania"
    elsif answer.regions_list == "Africa"
      regions = "Africa"
    else
      regions = ""
    end
    #create!(region: regions, user_id: answer.user_id)

    if answer.america_list == "United States"
      country = "United States"
    elsif answer.america_list == "Chile"
      country = "Chile"
    elsif answer.america_list == "Argentina"
      country = "Argentina"
    else
      country = ""
    end

    # if american_country
    #   create!(country: american_country, user_id: answer.user_id)
    # end


    if answer.europe_list == "France"
      country = "France"
    elsif answer.europe_list == "Italy"
      country = "Italy"
    elsif answer.europe_list == "Spain"
      country = "Spain"
    elsif answer.europe_list == "Portugal"
      country = "Portugal"
    elsif answer.europe_list == "Switzerland"
      country = "Switzerland"
    elsif answer.europe_list == "Germany"
      country = "Germany"
    elsif answer.europe_list == "Greece"
      country = "Greece"
    else
      country = ""
    end
    #create!(country: european_list, user_id: answer.user_id)

    if answer.oceania_list == "Australia"
      country = "Australia"
    elsif answer.oceania_list == "New-Zealand"
      country = "New-Zealand"
    else
      country = ""
    end
    #create!(country: oceanian_list, user_id: answer.user_id)

    if answer.aromas_list == "Fruit flavors"
      aromas = "Fruit flavors"
    elsif answer.aromas_list == "Herbal"
      aromas = "Herbal"
    elsif answer.aromas_list == "Floral flavors"
      aromas = "Floral flavors"
    elsif answer.aromas_list == "Woody"
      aromas = "Woody"
    elsif answer.aromas_list == "Spicy"
      aromas = "Spicy"
    elsif answer.aromas_list == "Mineral"
      aromas = "Mineral"
    else
      aromas = ""
    end
    #create!(selected_aroma: aromas_list, user_id: answer.user_id)

    if answer.question_grape_red == "Cabernet Sauvignon"
      grape = "Cabernet Sauvignon"
    elsif answer.question_grape_red == "Cabernet Franc"
      grape = "Cabernet Franc"
    elsif answer.question_grape_red == "Merlot"
      grape = "Merlot"
    elsif answer.question_grape_red == "Pinot Noir"
      grape = "Pinot Noir"
    elsif answer.question_grape_red == "Gamay"
      grape = "Gamay"
    elsif answer.question_grape_red == "Syrah"
      grape = "Syrah"
    elsif answer.question_grape_red == "Grenache"
      grape = "Grenache"
    elsif answer.question_grape_red == "Cinsault"
      grape = "Cinsault"
    elsif answer.question_grape_red == "Malbec"
      grape = "Malbec"
    elsif answer.question_grape_red == "Sangiovese"
      grape = "Sangiovese"
    else
      grape = ""
    end
    # if grape_red
    #   create!(selected_grape: grape_red, user_id: answer.user_id)
    # end

    if answer.question_grape_rose == "Syrah"
      grape = "Syrah"
    elsif answer.question_grape_rose == "Grenache"
      grape = "Grenache"
    elsif answer.question_grape_rose == "Cinsault"
      grape = "Cinsault"
    elsif answer.question_grape_rose == "Cabernet d\'Anjou"
      grape = "Cabernet d\'Anjou"
    else
      grape = ""
    end
    # if grape_rose
    #   create!(selected_grape: grape_rose, user_id: answer.user_id)
    # end


    if answer.question_grape_sweet == "Chardonnay"
      grape = "Chardonnay"
    elsif answer.question_grape_sweet == "Muscadelle"
      grape = "Muscadelle"
    elsif answer.question_grape_sweet == "Sémillion"
      grape = "Sémillion"
    elsif answer.question_grape_sweet == "Gewurztraminer"
      grape = "Gewurztraminer"
    elsif answer.question_grape_sweet == "Riesling"
      grape = "Riesling"
    elsif answer.question_grape_sweet == "Chenin"
      grape = "Chenin"
    elsif answer.question_grape_sweet == "Furmint"
      grape = "Furmint"
    else
      grape = ""
    end
    # if grape_sweet
    #   create!(selected_grape: grape_sweet, user_id: answer.user_id)
    # end

    if answer.question_grape_white == "Chardonnay"
      grape = "Chardonnay"
    elsif answer.question_grape_white == "Sauvignon"
      grape = "Sauvignon"
    elsif answer.question_grape_white == "Chenin"
      grape = "Chenin"
    elsif answer.question_grape_white == "Gewurztraminer"
      grape = "Gewurztraminer"
    elsif answer.question_grape_white == "Riesling"
      grape = "Riesling"
    elsif answer.question_grape_white == "Viognier"
      grape = "Viognier"
    elsif answer.question_grape_white == "Ugni Blanc"
      grape = "Ugni Blanc"
    elsif answer.question_grape_white == "Pinot Gris"
      grape = "Pinot Gris"
    elsif answer.question_grape_white == "Sémillion"
      grape = "Sémillion"
    else
      grape = ""
    end
    # if grape_white
    #   create!(selected_grape: grape_white, user_id: answer.user_id)
    # end

    if answer.question_grape_port == "Touriga Franca"
      grape = "Touriga Franca"
    elsif answer.question_grape_port == "Tinta Roriz"
      grape = "Tinta Roriz"
    elsif answer.question_grape_port == "Tinta Barroca"
      grape = "Tinta Barroca"
    elsif answer.question_grape_port == "Touriga Nacional"
      grape = "Touriga Nacional"
    elsif answer.question_grape_port == "Tinto Cao"
      grape = "Tinto Cao"
    else
      grape = ""
    end
    # if grape_port
    #   create!(selected_grape: grape_port, user_id: answer.user_id)
    # end


    if answer.question_grape_sparkling == "Chardonnay"
      grape = "Chardonnay"
    elsif answer.question_grape_sparkling == "Pinot Noir"
      grape = "Pinot Noir"
    elsif answer.question_grape_sparkling == "Pinot Meunier"
      grape = "Pinot Meunier"
    elsif answer.question_grape_sparkling == "Macabeo"
      grape = "Macabeo"
    elsif answer.question_grape_sparkling == "Monastrell"
      grape = "Monastrell"
    elsif answer.question_grape_sparkling == "Garnacha"
      grape = "Garnacha"
    elsif answer.question_grape_sparkling == "Muscat Blanc à Petits Grains"
      grape = "Muscat Blanc à Petits Grains"
    elsif answer.question_grape_sparkling == "Glera"
      grape = "Glera"
    elsif answer.question_grape_sparkling == "Riesling"
      grape = "Riesling"
    else
      grape = ""
    end
    # if grape_sparkling
    #   create!(selected_grape: grape_sparkling, user_id: answer.user_id)
    # end
    create!(color: color, vineyard_management: vineyard_management, selected_aroma: aromas, region: regions, country: country, selected_grape: grape, user_id: answer.user_id)

  end
end
