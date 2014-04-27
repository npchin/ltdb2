class CreateModifications < ActiveRecord::Migration
  def change
    create_table :modifications do |t|
      t.string :suspension
      t.string :chassis
      t.string :engine
      t.string :exhaust
      t.string :drivetrain
      t.string :brakes
      t.string :aesthetics
      t.string :aerodynamics
      t.string :tiles
      t.string :wheels
      t.string :data
      t.string :interior
      t.string :safety
    end
  end
end
