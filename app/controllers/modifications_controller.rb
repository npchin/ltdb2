class ModificationsController < ApplicationController

  def index
    @modifications = Modification.all
  end

  def show
    @modification = Modification.find_by(id: params[:id])
  end

  def new
  end

  def create
    @modification = Modification.new
    @modification.suspension = params[:suspension]
    @modification.chassis = params[:chassis]
    @modification.engine = params[:engine]
    @modification.exhaust = params[:exhaust]
    @modification.drivetrain = params[:drivetrain]
    @modification.brakes = params[:brakes]
    @modification.aesthetics = params[:aesthetics]
    @modification.aerodynamics = params[:aerodynamics]
    @modification.tiles = params[:tiles]
    @modification.wheels = params[:wheels]
    @modification.data = params[:data]
    @modification.interior = params[:interior]
    @modification.safety = params[:safety]

    if @modification.save
      redirect_to modifications_url, notice: "Modification created successfully."
    else
      render 'new'
    end
  end

  def edit
    @modification = Modification.find_by(id: params[:id])
  end

  def update
    @modification = Modification.find_by(id: params[:id])
    @modification.suspension = params[:suspension]
    @modification.chassis = params[:chassis]
    @modification.engine = params[:engine]
    @modification.exhaust = params[:exhaust]
    @modification.drivetrain = params[:drivetrain]
    @modification.brakes = params[:brakes]
    @modification.aesthetics = params[:aesthetics]
    @modification.aerodynamics = params[:aerodynamics]
    @modification.tiles = params[:tiles]
    @modification.wheels = params[:wheels]
    @modification.data = params[:data]
    @modification.interior = params[:interior]
    @modification.safety = params[:safety]

    if @modification.save
      redirect_to modifications_url, notice: "Modification updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @modification = Modification.find_by(id: params[:id])
    @modification.destroy

    redirect_to modifications_url, notice: "Modification deleted."
  end
end
