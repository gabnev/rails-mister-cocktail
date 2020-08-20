class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true, allow_blank: false

  validates :cocktail_id, uniqueness: { scope: :ingredient_id }

  # validates :cocktail_id, uniqueness: true
  # validates :ingredient_id, uniqueness: true

end
