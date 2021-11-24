class Table < ApplicationRecord
  has_many :dinners
  has_many :users, through: :dinners
end
