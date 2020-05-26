class Bottle < ApplicationRecord
  has_one_attached :photo
  has_many :reviews
end
