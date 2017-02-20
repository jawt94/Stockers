class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name, :ticker
      t.integer :current_price

      t.timestamps
    end
  end
end
