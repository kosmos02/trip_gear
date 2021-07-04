class CreateTripGears < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_gears do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :gear, null: false, foreign_key: true

      t.timestamps
    end
  end
end
