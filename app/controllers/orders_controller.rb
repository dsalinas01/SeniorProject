class OrdersController < ApplicationController
    def index
      @patients = Patient.all  
      @diet = Diet.all
    end
    def new
        this_session = Patient.find(params[:id])
        @first = this_session.fname
        @last = this_session.lname
        @roomnumber = this_session.room.rmnumber
        @phone = this_session.room.phone
        @diet = this_session.diet.name
        
        @foods = Category.all
    end
    
    def foods
     cateid = params[:category_id]
     @foods = Food.where(category_id: cateid)
     

    respond_to do |format|
      format.json { render json: @foods }
    end
    end
    
    def new_order
    render '#'
    end
end
