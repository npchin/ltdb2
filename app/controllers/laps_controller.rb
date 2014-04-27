class LapsController < ApplicationController

  def index
    @laps = Lap.all
  end

  def show
    @lap = Lap.find_by(id: params[:id])
  end

  def new
  end

  def create
    @lap = Lap.new
    @lap.user_id = params[:user_id]
    @lap.modification_id = params[:modification_id]
    @lap.lap_date = params[:lap_date]
    @lap.track_id = params[:track_id]
    @lap.lap_time = params[:lap_time]
    @lap.video_link = params[:video_link]
    @lap.data_file = params[:data_file]

    if @lap.save
      redirect_to laps_url, notice: "Lap created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lap = Lap.find_by(id: params[:id])
  end

  def update
    @lap = Lap.find_by(id: params[:id])
    @lap.user_id = params[:user_id]
    @lap.modification_id = params[:modification_id]
    @lap.lap_date = params[:lap_date]
    @lap.track_id = params[:track_id]
    @lap.lap_time = params[:lap_time]
    @lap.video_link = params[:video_link]
    @lap.data_file = params[:data_file]

    if @lap.save
      redirect_to laps_url, notice: "Lap updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lap = Lap.find_by(id: params[:id])
    @lap.destroy

    redirect_to laps_url, notice: "Lap deleted."
  end
end
