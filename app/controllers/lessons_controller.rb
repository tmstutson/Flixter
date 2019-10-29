class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_authorized_for_current_course, only: [:show]

	def show
	end

private 

helper_method :current_lesson
def current_lesson
	@current_lesson ||= Lesson.find(params[:id])
	    @lesson = current_lesson.section.course
	    redirect_to instructor_course_path(@course)
	    if @current_user.enrolled_in?
      		redirect_to 
    	else
      		render :new, status: :unprocessable_entity
   		 end
	  end
	end


end



