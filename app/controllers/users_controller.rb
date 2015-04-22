class UsersController < ApplicationController

  def index
    @q = User.ransack(params[:q])
    @search_field = :full_name_cont
    if params[:q].present?
      @users = @q.result(distinct: true)
    else
      @users = User.all
    end
  end

  def show
    @user   = User.find(params[:id])
  end
end