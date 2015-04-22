class AddDetailsToCourseTypes < ActiveRecord::Migration
  def change
    add_column :course_types, :details, :text
  end
end
