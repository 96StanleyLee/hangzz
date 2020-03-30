class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.belongs_to :group, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true
      t.integer :status, default: 0 
      t.datetime :date

      t.timestamps
    end
  end
end
