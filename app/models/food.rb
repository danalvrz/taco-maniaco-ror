class Food < ApplicationRecord
  belongs_to :user
  has_many :recpie_foods, dependent: :destroy
end
