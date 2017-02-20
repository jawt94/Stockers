class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.references :company_id, foreign_key: true
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
