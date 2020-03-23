class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :home_address
      t.string :work_address
      t.string :email

      t.timestamps
    end
  end
end
