class City < ApplicationRecord
  has_many :features
  has_many :investments
  has_many :parcels
end
