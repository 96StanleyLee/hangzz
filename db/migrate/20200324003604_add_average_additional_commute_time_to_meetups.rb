class AddAverageAdditionalCommuteTimeToMeetups < ActiveRecord::Migration[6.0]
  def change
    add_column :meetups, :average_additional_commute_time, :float
  end
end
