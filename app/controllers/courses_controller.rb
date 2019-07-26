class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  def each
    @each = each.new
end
end