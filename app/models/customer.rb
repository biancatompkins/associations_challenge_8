class Customer < ActiveRecord::Base
  has_many :orders
  has_many :notes, through: :orders
  
  validate :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: ^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$}
end
