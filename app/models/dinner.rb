class Dinner < ApplicationRecord
  belongs_to :user
  belongs_to :table
end
