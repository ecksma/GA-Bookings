class AddOccupancyToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :occupancy, :integer
  end
end
