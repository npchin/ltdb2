class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find_by(id: params[:id])
  end

  def new
  end

  def create
    @car = Car.new
    @car.user_id = params[:user_id]
    @car.year = params[:year]
    @car.make = params[:make]
    @car.model = params[:model]
    @car.modification_id = params[:modification_id]

    if @car.save
      redirect_to cars_url, notice: "Car created successfully."
    else
      render 'new'
    end
  end

  def edit
    @car = Car.find_by(id: params[:id])
  end

  def update
    @car = Car.find_by(id: params[:id])
    @car.user_id = params[:user_id]
    @car.year = params[:year]
    @car.make = params[:make]
    @car.model = params[:model]
    @car.modification_id = params[:modification_id]

    if @car.save
      redirect_to cars_url, notice: "Car updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @car = Car.find_by(id: params[:id])
    @car.destroy

    redirect_to cars_url, notice: "Car deleted."
  end
end
