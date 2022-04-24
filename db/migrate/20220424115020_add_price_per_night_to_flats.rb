class AddPricePerNightToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :price_per_night, :float
  end
end
