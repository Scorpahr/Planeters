class ChangePriceTypeInPlanets < ActiveRecord::Migration[7.1]
  def change
    change_column :planets, :price, :integer, using: 'price::integer'
  end
end
