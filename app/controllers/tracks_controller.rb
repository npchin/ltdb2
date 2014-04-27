class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find_by(id: params[:id])
  end

  def new
  end

  def create
    @track = Track.new
    @track.track_name = params[:track_name]

    if @track.save
      redirect_to tracks_url, notice: "Track created successfully."
    else
      render 'new'
    end
  end

  def edit
    @track = Track.find_by(id: params[:id])
  end

  def update
    @track = Track.find_by(id: params[:id])
    @track.track_name = params[:track_name]

    if @track.save
      redirect_to tracks_url, notice: "Track updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @track = Track.find_by(id: params[:id])
    @track.destroy

    redirect_to tracks_url, notice: "Track deleted."
  end
end
