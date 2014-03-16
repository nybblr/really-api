class FuelsController < ApplicationController
  respond_to :json

  def index
    @fuels = Fuel.all
    respond_with @fuels
  end

  def show
    @fuel = Fuel.find(params[:id])
    respond_with @fuel
  end

  def create
    @fuel = Fuel.new(fuel_params)
    @fuel.save
    respond_with @fuel
  end

  def update
    @fuel = Fuel.find(params[:id])
    @fuel.update(fuel_params)
    respond_with @fuel
  end

  def destroy
    @fuel = Fuel.find(params[:id])
    @fuel.destroy
    respond_with @fuel
  end

  private

  def fuel_params
    params.require(:fuel).permit(
      :name, :caveats, :formula
    )
  end
end
