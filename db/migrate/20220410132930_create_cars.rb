class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.integer :price
      t.string :photo
      t.references :car_range, null: false, foreign_key: true

      t.timestamps
    end
  end
end
