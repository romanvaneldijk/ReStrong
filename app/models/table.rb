class Table < ApplicationRecord
  has_many :dinners
  has_many :users, through: :dinners
  has_many :orders
end
