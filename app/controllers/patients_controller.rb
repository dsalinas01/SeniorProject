class PatientsController < ApplicationController
  def show
   @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new(patient_params)
    @room = Room.all
    @diet = Diet.all
    @patients = Patient.all
  end
  def create
    params.permit!
    @patient = Patient.new(params[:patient])
      # Handle a successful save.
    if @patient.save
        flash[:success] = "Patient had been Added"
        redirect_to patient_path
    else
      render 'new'
    end
  end
  def edit
    this_session = Patient.find(params[:id])
    @first = this_session.fname
    @last = this_session.lname
    @patient = Patient.find(params[:id])
    @diet = Diet.all 
    @room = Room.all
  end
   def update
    @Patient = Patient.find(params[:id])
    if @Patient.update_attributes(patient_params)
      # Handle a successful update.
      flash[:success] = "Patient updated"
      redirect_to patient_path
    else
      render 'edit'
    end
   end
   
  def destroy
    this_session = Patient.find(params[:id])
    this_session.destroy
    flash[:success] = "Patient removed"
      redirect_to patient_path
  end
   private

    def patient_params
      params.require(:patient).permit(:fname, :lname, :MRN, :SSN,
                                  :birthday, :room_id, :diet_id) if params[:patient]
    end
end