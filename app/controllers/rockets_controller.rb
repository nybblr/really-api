class RocketsController < ApplicationController
  respond_to :json

  def index
    @rockets = Rocket.all
    respond_with @rockets
  end

  def show
    @rocket = Rocket.find(params[:id])
    respond_with @rocket
  end

  def create
    @rocket = Rocket.new(rocket_params)
    @rocket.save
    respond_with @rocket
  end

  def update
    @rocket = Rocket.find(params[:id])
    @rocket.update(rocket_params)
    respond_with @rocket
  end

  def destroy
    @rocket = Rocket.find(params[:id])
    @rocket.destroy
    respond_with @rocket
  end

  private

  def rocket_params
    params.require(:rocket).permit(
      :title, :thrusters, :speed, :decommissioned
    )
  end
end
