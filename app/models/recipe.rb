class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipie_foods, dependent: :destroy
end
