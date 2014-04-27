class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find_by(id: params[:id])
  end

  def new
  end

  def create
    @experience = Experience.new
    @experience.hpde = params[:hpde]
    @experience.open_track_day = params[:open_track_day]
    @experience.time_trial = params[:time_trial]
    @experience.club = params[:club]
    @experience.pro = params[:pro]

    if @experience.save
      redirect_to experiences_url, notice: "Experience created successfully."
    else
      render 'new'
    end
  end

  def edit
    @experience = Experience.find_by(id: params[:id])
  end

  def update
    @experience = Experience.find_by(id: params[:id])
    @experience.hpde = params[:hpde]
    @experience.open_track_day = params[:open_track_day]
    @experience.time_trial = params[:time_trial]
    @experience.club = params[:club]
    @experience.pro = params[:pro]

    if @experience.save
      redirect_to experiences_url, notice: "Experience updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])
    @experience.destroy

    redirect_to experiences_url, notice: "Experience deleted."
  end
end
