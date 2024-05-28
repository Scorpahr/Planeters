class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :destroy, :edit, :update]

  def index
    @planets = Planet.by_id
  end

  def show
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to planets_path
    else
      render 'planets/new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @planet.update(planet_params)
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet.destroy
    redirect_to planets_path, status: :see_other
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :image, :location, :description, :price, :max_person)
  end
end
