class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :color
      t.float :price
      t.string :year
      t.string :car_type

      t.timestamps
    end
  end
end
