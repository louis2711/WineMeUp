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
      regions_list = "America"
    elsif answer.regions_list == "Europe"
      regions_list = "Europe"
    elsif answer.regions_list == "Oceania"
      regions_list = "Oceania"
    else
      regions_list = "Africa"
    end
    #create!(region: regions_list, user_id: answer.user_id)

    if answer.america_list == "United States"
      american_country = "United States"
    elsif answer.america_list == "Chile"
      american_country = "Chile"
    else
      american_country = "Argentina"
    end

    # if american_country
    #   create!(country: american_country, user_id: answer.user_id)
    # end


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
    #create!(country: european_list, user_id: answer.user_id)

    if answer.oceania_list == "Australia"
      oceanian_list = "Australia"
    else
      oceanian_list = "New-Zealand"
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
    else
      aromas = "Mineral"
    end
    #create!(selected_aroma: aromas_list, user_id: answer.user_id)

    if answer.question_grape_red == "Cabernet Sauvignon"
      grape_red = "Cabernet Sauvignon"
    elsif answer.question_grape_red == "Cabernet Franc"
      grape_red = "Cabernet Franc"
    elsif answer.question_grape_red == "Merlot"
      grape_red = "Merlot"
    elsif answer.question_grape_red == "Pinot Noir"
      grape_red = "Pinot Noir"
    elsif answer.question_grape_red == "Gamay"
      grape_red = "Gamay"
    elsif answer.question_grape_red == "Syrah"
      grape_red = "Syrah"
    elsif answer.question_grape_red == "Grenache"
      grape_red = "Grenache"
    elsif answer.question_grape_red == "Cinsault"
      grape_red = "Cinsault"
    elsif answer.question_grape_red == "Malbec"
      grape_red = "Malbec"
    else
      grape_red = "Sangiovese"
    end
    # if grape_red
    #   create!(selected_grape: grape_red, user_id: answer.user_id)
    # end

    if answer.question_grape_rose == "Syrah"
      grape_rose = "Syrah"
    elsif answer.question_grape_rose == "Grenache"
      grape_rose = "Grenache"
    elsif answer.question_grape_rose == "Cinsault"
      grape_rose = "Cinsault"
    else
      grape_rose = "Cabernet d\'Anjou"
    end
    # if grape_rose
    #   create!(selected_grape: grape_rose, user_id: answer.user_id)
    # end


    if answer.question_grape_sweet == "Chardonnay"
      grape_sweet = "Chardonnay"
    elsif answer.question_grape_sweet == "Muscadelle"
      grape_sweet = "Muscadelle"
    elsif answer.question_grape_sweet == "Sémillion"
      grape_sweet = "Sémillion"
    elsif answer.question_grape_sweet == "Gewurztraminer"
      grape_sweet = "Gewurztraminer"
    elsif answer.question_grape_sweet == "Riesling"
      grape_sweet = "Riesling"
    elsif answer.question_grape_sweet == "Chenin"
      grape_sweet = "Chenin"
    else
      grape_sweet = "Furmint"
    end
    # if grape_sweet
    #   create!(selected_grape: grape_sweet, user_id: answer.user_id)
    # end

    if answer.question_grape_white == "Chardonnay"
      grape_white = "Chardonnay"
    elsif answer.question_grape_white == "Sauvignon"
      grape_white = "Sauvignon"
    elsif answer.question_grape_white == "Chenin"
      grape_white = "Chenin"
    elsif answer.question_grape_white == "Gewurztraminer"
      grape_white = "Gewurztraminer"
    elsif answer.question_grape_white == "Riesling"
      grape_white = "Riesling"
    elsif answer.question_grape_white == "Viognier"
      grape_white = "Viognier"
    elsif answer.question_grape_white == "Ugni Blanc"
      grape_white = "Ugni Blanc"
    elsif answer.question_grape_white == "Pinot Gris"
      grape_white = "Pinot Gris"
    else
      grape_white = "Sémillion"
    end
    # if grape_white
    #   create!(selected_grape: grape_white, user_id: answer.user_id)
    # end

    if answer.question_grape_port == "Touriga Franca"
      grape_port = "Touriga Franca"
    elsif answer.question_grape_port == "Tinta Roriz"
      grape_port = "Tinta Roriz"
    elsif answer.question_grape_port == "Tinta Barroca"
      grape_port = "Tinta Barroca"
    elsif answer.question_grape_port == "Touriga Nacional"
      grape_port = "Touriga Nacional"
    else
      grape_port = "Tinto Cao"
    end
    # if grape_port
    #   create!(selected_grape: grape_port, user_id: answer.user_id)
    # end


    if answer.question_grape_sparkling == "Chardonnay"
      grape_sparkling = "Chardonnay"
    elsif answer.question_grape_sparkling == "Pinot Noir"
      grape_sparkling = "Pinot Noir"
    elsif answer.question_grape_sparkling == "Pinot Meunier"
      grape_sparkling = "Pinot Meunier"
    elsif answer.question_grape_sparkling == "Macabeo"
      grape_sparkling = "Macabeo"
    elsif answer.question_grape_sparkling == "Monastrell"
      grape_sparkling = "Monastrell"
    elsif answer.question_grape_sparkling == "Garnacha"
      grape_sparkling = "Garnacha"
    elsif answer.question_grape_sparkling == "Muscat Blanc à Petits Grains"
      grape_sparkling = "Muscat Blanc à Petits Grains"
    elsif answer.question_grape_sparkling == "Glera"
      grape_sparkling = "Glera"
    else
      grape_sparkling = "Riesling"
    end
    # if grape_sparkling
    #   create!(selected_grape: grape_sparkling, user_id: answer.user_id)
    # end
    create!(color: color, vineyard_management: vineyard_management, selected_aroma: aromas, user_id: answer.user_id)

  end
end
