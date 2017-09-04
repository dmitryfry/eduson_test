class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
    @courses = Course.all
    @appointment = Appointment.all
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
  end



   private

   def appointment_params
       params.permit(:user_id, :course_id)
   end

end
