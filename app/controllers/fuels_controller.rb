class FuelsController < ApplicationController
  respond_to :json

  def index
    respond_with Fuel.all
  end

  def show
    respond_with Fuel.find(params[:id])
  end
end
