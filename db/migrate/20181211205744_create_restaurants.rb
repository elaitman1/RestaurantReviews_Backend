class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :food_type
      t.boolean :bar
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
