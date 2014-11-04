class Customer < ActiveRecord::Base
  has_many :orders
  has_many :notes, through: :orders
  
  validate :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
