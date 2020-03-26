class AddFileToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :file, :string
  end
end
