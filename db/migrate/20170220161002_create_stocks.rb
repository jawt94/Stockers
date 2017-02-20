class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.references :company, foreign_key: true
      t.references :portfolio, foreign_key: true
      t.integer :shares, :purchase_price, null: false

      t.timestamps
    end
  end
end
