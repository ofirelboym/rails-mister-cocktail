class Cocktail < ApplicationRecord
  validates :name, uniqueness: true, presence: true, allow_blank: false
  has_many :doses
  has_many :ingredients, through: :doses, dependent: :destroy
end
