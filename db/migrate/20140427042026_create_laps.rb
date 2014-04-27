class CreateLaps < ActiveRecord::Migration
  def change
    create_table :laps do |t|
      t.integer :user_id
      t.integer :modification_id
      t.date :lap_date
      t.integer :track_id
      t.time :lap_time
      t.string :video_link
      t.string :data_file
    end
  end
end
