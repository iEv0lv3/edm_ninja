class HomesController < ApplicationController
  def index
    @user = User.where(params[:id])
  end
end
