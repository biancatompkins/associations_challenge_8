class Customer < ActiveRecord::Base
  validate :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: ^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$}
end
