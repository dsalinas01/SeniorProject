class Order < ActiveRecord::Base
    belongs_to :Patient, dependent :destroy
end
