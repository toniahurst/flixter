class CoursesController < ApplicationController
  def index
    @courses = Course.all
    @courses = Course.order("title").page(params[:page])
  end

  def show
    @course = Course.find(params[:id])
  end
end