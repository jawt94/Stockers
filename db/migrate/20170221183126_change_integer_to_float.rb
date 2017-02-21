class ChangeIntegerToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :stocks, :purchase_price, :float
  end
end
