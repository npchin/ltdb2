class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :hpde
      t.string :open_track_day
      t.string :time_trial
      t.string :club
      t.string :pro
    end
  end
end
