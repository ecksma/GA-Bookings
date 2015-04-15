class RemoveCourseIdFromCohort < ActiveRecord::Migration
  def change
    remove_column :cohorts, :course_id, :integer
  end
end
