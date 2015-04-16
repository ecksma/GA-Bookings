class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user   = User.find(params[:id])
  end

  def create
    cohorts = User.contracts.cohorts
    user_cohorts = params[:user].delete(:cohorts)
    @user.cohorts_ids = user_cohorts
  end

  def update
    cohorts = User.contracts.cohorts
    user_cohorts = params[:user].delete(:cohorts)
    @user.cohorts_ids = user_cohorts
  end

end

