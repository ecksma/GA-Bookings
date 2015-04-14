class AddCohortIdToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :cohort_id, :integer
  end
end
