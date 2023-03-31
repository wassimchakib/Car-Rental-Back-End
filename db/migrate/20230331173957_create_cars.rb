class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :color
      t.float :price
      t.date :year

      t.timestamps
    end
  end
end
