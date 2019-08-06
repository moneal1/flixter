class CoursesController < ApplicationController
  def index
    @courses = Course.all
    
  end
  

  def show
    @courses = Course.find(params[:id])
  end

  def title
    @title =Title.all
  end
  
  end

