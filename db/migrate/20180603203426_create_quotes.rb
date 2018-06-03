class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :symbol
      t.integer :price
      t.integer :holdings_value

      t.timestamps
    end
  end
end
