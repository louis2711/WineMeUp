class Bottle < ApplicationRecord

  include Filterable
  has_one_attached :photo
  has_many :feedbacks
  scope :filter_by_year, -> (year) { where year: year }
  scope :filter_by_region, -> (region) { where region: region }
  scope :filter_by_domain, -> (domain) { where domain: domain }
  scope :filter_by_price_range, -> (price_range) { where price_range: price_range }
  scope :filter_by_grapes, -> (grapes) { where grapes: grapes }
  scope :filter_by_color, -> (color) { where color: color }
  scope :filter_by_description, -> (description) { where description: description }
  scope :filter_by_typical_meal, -> (typical_meal) { where typical_meal: typical_meal }

end
