class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.belongs_to :group, null: false
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
