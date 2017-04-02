class Investment < ApplicationRecord
  belongs_to :city
  has_many :investments, through: :linkages
  has_many :features, through: :linkages
end
