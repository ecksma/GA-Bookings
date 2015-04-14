class CourseTypesController < ApplicationController
  
  def index
    @course_types = CourseType.all
  end

  def show
  end
end
