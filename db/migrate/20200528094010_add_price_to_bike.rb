class AddPriceToBike < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :price, :float
  end
end
