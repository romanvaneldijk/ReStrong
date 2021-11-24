class User < ApplicationRecord
  has_many :orders
  has_many :order_items, through: :orders
  has_many :dinners
  has_many :tables, through: :dinners


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
