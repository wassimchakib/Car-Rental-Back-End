class AddCarRefToImage < ActiveRecord::Migration[7.0]
  def change
    add_reference :images, :car, null: false, foreign_key: true
  end
end
