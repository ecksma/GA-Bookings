class AddDurationToCourseTypes < ActiveRecord::Migration
  def change
    add_column :course_types, :duration, :integer
  end
end
