class CarsController < ApplicationController
  before_action :authenticate_user!
  def index
    @car = Car.all
  end


  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

 
  def edit
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  private
  def car_params
    params.require(:car).permit(:placa , :color, :modelo, :avatar)
  end
end