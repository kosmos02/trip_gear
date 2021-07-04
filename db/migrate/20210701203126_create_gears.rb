class CreateGears < ActiveRecord::Migration[6.1]
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :make_year

      t.timestamps
    end
  end
end
