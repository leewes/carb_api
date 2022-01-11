class Meal < ApplicationRecord
  belongs_to :name_id
  belongs_to :day_id
  belongs_to :carb_id
end
