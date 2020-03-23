class CreateLocationTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :location_types do |t|
      t.string :category

      t.timestamps
    end
  end
end
