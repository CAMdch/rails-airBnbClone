class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.integer :number_of_travelers
      t.integer :number_of_beds
      t.integer :number_of_bathrooms
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
