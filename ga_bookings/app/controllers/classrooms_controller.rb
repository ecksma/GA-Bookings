class ClassroomsController < ApplicationController

  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.create(classroom_params)
    if @classroom.save
      name = @classroom.name
      redirect_to classrooms_path
      flash[:notice] = "#{name} created"
    else
      render 'new'
      flash[:error] = "Unable to create classroom. Please try again"
    end
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy
    redirect_to classrooms_path
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def update
    @classroom = Classroom.find(params[:id])
    @classroom.update classroom_params
    if @classroom.save
      flash[:notice] = "Your classroom was updated succesfully"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

    def classroom_params
      params.require(:classroom).permit(:name, :delete)
    end

end
