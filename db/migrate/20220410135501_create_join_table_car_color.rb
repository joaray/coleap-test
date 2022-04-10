class CreateJoinTableCarColor < ActiveRecord::Migration[7.0]
  def change
    create_table :cars_colors do |t|
      t.references :car, foreign_key: true
      t.references :color, foreign_key: true
      t.index %i[car_id color_id]
    end
  end
end
