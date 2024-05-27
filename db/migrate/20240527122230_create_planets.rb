class CreatePlanets < ActiveRecord::Migration[7.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :price
      t.integer :max_person
      t.string :image

      t.timestamps
    end
  end
end
