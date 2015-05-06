class PatientsController < ApplicationController
  def show
   @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new(patient_params)
  end
  def create
    params.permit!
   @patient = Patient.new(params[:patient])
      # Handle a successful save.
    if @patient.save
        flash[:success] = "Patient had been Added"
        redirect_to trans_path
    else
      render 'new'
    end
  end
   private

    def patient_params
      params.require(:patient).permit(:fname, :lname, :MRN, :SSN,
                                      :birthday) if params[:patient]
    end
end