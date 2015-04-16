class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  
  before_action :find_classroom

  def index
    @bookings = Booking.where("classroom_id = ? AND end_time >= ?", @classroom.id, Time.now).order(:start_time)
    respond_with @bookings
  end

  def new
    @booking = Booking.new(classroom_id: @classroom.id)
  end

  def create
    @booking =  Booking.new(params[:booking].permit(:classroom_id, :start_time, :length, :cohort_id))
    @booking.classroom = @classroom
    if @booking.save
      redirect_to classroom_bookings_path(@classroom, method: :get)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to classroom_bookings_path(@classroom)
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    # @booking.classrooms = @classrooms

    if @booking.update(params[:booking].permit(:classroom_id, :start_time, :length, :cohort_id))
      flash[:notice] = 'Your booking was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to classroom_bookings_path(@classroom)
      end
    else
      render 'edit'
    end
  end

  private

  def save booking
    if @booking.save
        flash[:notice] = 'booking added'
        redirect_to classroom_booking_path(@classroom, @booking)
      else
        render 'new'
      end
  end

  def find_classroom
    if params[:classroom_id]
      @classroom = Classroom.find_by_id(params[:classroom_id])
    end
  end

end
