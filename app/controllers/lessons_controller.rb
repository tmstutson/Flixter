class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_authorized_for_current_course, only: [:show]

	def show
	end

	private 
	
	def require_authorized_for_current_lesson
		if current_user.enrolled_in?(current_lesson.section.course) == false 
			redirect_to course_enrollments_path(@course), alert: 'You are not authorized to view this lesson'
		end
	end
end 



