class AddCourseTypeIdToCohort < ActiveRecord::Migration
  def change
    add_column :cohorts, :course_type_id, :integer
  end
end
