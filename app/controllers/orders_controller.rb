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
        @id = this_session.id
        @foods = Category.all
    end
    
    def create
    params.permit!
    @order = Order.new(params[:order])
      # Handle a successful save.
    if @order.save
        flash[:success] = "Order saved"
        redirect_to trans_path
    else
      render 'new'
    end
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
    
    private

    def user_params
      params.require(:order).permit(:food_id) if params[:user]
    end
end
