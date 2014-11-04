class Order < ActiveRecord::Base
  belongs_to :customer
  has_one :note
  
  validate :number, presence: true
  validates :number, uniqueness: true

  before_save :add_order_num

  def add_order_num
    "R"+rand(999999999).to_s.center(9, rand(9).to_s)
  end

end
