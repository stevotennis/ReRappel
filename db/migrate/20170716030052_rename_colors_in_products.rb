class RenameColorsInProducts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :products, :categpry, :category
  end
end
