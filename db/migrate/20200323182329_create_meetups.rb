class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.belongs_to :group, null: false
      t.belongs_to :location, null: false
      t.integer :status, default: 0 
      t.datetime :date

      t.timestamps
    end
  end
end
