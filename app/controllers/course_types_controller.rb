class CourseTypesController < ApplicationController
  before_action :set_course_type, only: [:show, :edit, :update, :destroy]

  def index
    @course_types = CourseType.all
  end

  def show
  end

  def new
    @course_type = CourseType.new
  end

  def edit
  end

  def create
    @course_type = CourseType.new(course_type_params)

    respond_to do |format|
      if @course_type.save
        format.html { redirect_to @course_type, notice: 'Course Type was successfully created.' }
        format.json { render :show, status: :created, location: @course_type }
      else
        format.html { render :new }
        format.json { render json: @course_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @course_type.update(course_type_params)
        format.html { redirect_to @course_type, notice: 'Course Type was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_type }
      else
        format.html { render :edit }
        format.json { render json: @course_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course_type.destroy
    respond_to do |format|
      format.html { redirect_to course_types_url, notice: 'Course Type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_type
      @course_type = CourseType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_type_params
      params.require(:course_type).permit(:name, :details, :duration, :cohort_id)
    end
end
