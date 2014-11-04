class Note < ActiveRecord::Base
  belongs_to :order
  belongs_to :customer, :through => :order
end
