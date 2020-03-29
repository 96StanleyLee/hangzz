class CreateCommuteDifferentials < ActiveRecord::Migration[6.0]
  def change
    create_table :commute_differentials do |t|
      t.belongs_to :user, null: false
      t.belongs_to :location, null: false
      t.float :differential

      t.timestamps
    end
  end
end
