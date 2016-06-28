class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :name
      t.string :postcode
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
