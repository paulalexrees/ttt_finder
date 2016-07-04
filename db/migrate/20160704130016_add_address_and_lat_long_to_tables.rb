class AddAddressAndLatLongToTables < ActiveRecord::Migration
  def change
    add_column :tables, :address, :string
    add_column :tables, :latitude, :float
    add_column :tables, :longitude, :float
  end
end
