class RecipieFood < ApplicationRecord
    belongs_to :recipe
    belongs_to :food
end
