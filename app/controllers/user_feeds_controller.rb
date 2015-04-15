class UserFeedsController < ApplicationController
  def index
  end

  def show
    @feed = Feed.find(params[:user_id])
    @user
  end

  def new
  end

  def create
  end

  def update
  end

  def delete
  end
end
