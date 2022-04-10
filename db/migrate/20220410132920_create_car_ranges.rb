class CreateCarRanges < ActiveRecord::Migration[7.0]
  def change
    create_table :car_ranges do |t|
      t.integer :distance, null: false, default: 0
      t.integer :unit, null: false, default: CarRange.units[:km]

      t.timestamps
    end
  end
end
