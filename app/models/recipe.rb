class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recpie_foods
end
