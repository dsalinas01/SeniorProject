class Patient < ActiveRecord::Base
   belongs_to :room
   has_many :orders
   belongs_to :diet
end
