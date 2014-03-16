class RocketsController < ApplicationController
  respond_to :json

  def index
    respond_with Rocket.all
  end

  def show
    respond_with Rocket.find(params[:id])
  end
end
