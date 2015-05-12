class Patient < ActiveRecord::Base
   belongs_to :room
   has_many :orders
   belongs_to :diet
   
   validates :fname,  presence: true, length: { maximum: 50 }
   validates :lname,  presence: true, length: { maximum: 50 }
end
