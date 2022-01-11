class Meal < ApplicationRecord
  belongs_to :users
  belongs_to :days
  belongs_to :carbs
end
