class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :name
      t.belongs_to :location_type, null: false
      t.integer :price_in_dollar_signs

      t.timestamps
    end
  end
end
