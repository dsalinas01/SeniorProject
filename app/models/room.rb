class Room < ActiveRecord::Base
  has_one :patient
end
