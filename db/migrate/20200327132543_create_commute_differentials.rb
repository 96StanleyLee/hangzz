class CreateCommuteDifferentials < ActiveRecord::Migration[6.0]
  def change
    create_table :commute_differentials do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true
      t.float :differential

      t.timestamps
    end
  end
end
