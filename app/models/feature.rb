class Feature < ApplicationRecord
  belongs_to :city
  has_many :linkages
  has_many :features, through: :linkages
  has_many :investments, through: :linkages
end
