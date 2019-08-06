class CoursesController < ApplicationController
  def index
    @courses = Course.all
    @image = Images.new
  end
  
  def current_course
  @current_course ||= Course.find(params[:id])
end

  def show
    @course = Course.find(params[:id])
  end
  
  end

