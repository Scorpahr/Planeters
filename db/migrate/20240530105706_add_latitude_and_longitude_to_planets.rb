class AddLatitudeAndLongitudeToPlanets < ActiveRecord::Migration[7.1]
  def change
    add_column :planets, :latitude, :float
    add_column :planets, :longitude, :float
  end
end
