class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.integer :cash, default: 0
      t.references :user
      
      t.timestamps
    end
  end
end
