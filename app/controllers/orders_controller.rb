class OrdersController < ApplicationController
    def index
      @patients = Patient.all  
      @diet = Diet.all
    end
    def new
        this_session = Patient.find(params[:id])
        @first = this_session.fname
        @last = this_session.lname
    end
    
    def new_order
    render '#'
    end
end
