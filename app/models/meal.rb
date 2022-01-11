class Meal < ApplicationRecord
  has_one :users
  has_one :days
  has_one :carbs
end
