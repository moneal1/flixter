class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  def each
    @each = each.new
  end

  def show
    @course = Course.find(params[:id])
  end
  def title
    @title = title.new
  end
  end

