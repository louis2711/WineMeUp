class Bottle < ApplicationRecord

  include Filterable
  has_one_attached :photo
  has_many :feedbacks
  scope :filter_by_color, -> (color) { where color: color }
  scope :filter_by_grape_variety, -> (grape_variety) { where "grape_variety ilike ?", "%#{grape_variety}%" }
  scope :filter_by_aroma, -> (aroma) { where aroma: aroma }
  scope :filter_by_characteristics, -> (characteristics) { where "characteristics ilike ?", "%#{characteristics}%" }
  scope :filter_by_country, -> (country) { where country: country }
  scope :filter_by_region, -> (region) { where region: region }
  scope :filter_by_vintage, -> (vintage) { where vintage: vintage }
  scope :filter_by_typical_meal, -> (typical_meal) { where typical_meal: typical_meal }
  scope :filter_by_price_range, -> (price_range) {
    if price_range == "2,2000"
      all
    else
      where "price_range > ? and price_range < ?", price_range.split(",")[0], price_range.split(",")[1]
    end
    }
end
