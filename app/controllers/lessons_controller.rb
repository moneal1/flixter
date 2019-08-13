class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_section

  def show
  end

  private

  def lesson
    if !current_user.enrolled_in?
      (current_lesson.section.course)

  
  end

  def course
    @course = Courses.new
  end

  def require_authorized_for_current_section
    if current_section.course.user != current_user
      redirect_to user_session_path(current_lesson.course), alert: 'You Are Not Enrolled', status: :unauthorized
    end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  helper_method :current_section
def current_section
  @current_section ||= Section.find(params[:section_id])
end
end
end
end




