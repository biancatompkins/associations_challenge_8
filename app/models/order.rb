class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :notes
  
  validate :number, presence: true
  validates :number, uniqueness: true

  before_create :generate_number

  private

  def generate_number
    self.number = "R"+rand(999999999).to_s.center(9, rand(9).to_s)
  end

end
