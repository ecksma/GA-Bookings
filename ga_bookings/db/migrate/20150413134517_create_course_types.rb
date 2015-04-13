class CreateCourseTypes < ActiveRecord::Migration
  def change
    create_table :course_types do |t|
      t.string :name
      t.integer :cohort_id

      t.timestamps null: false
    end
  end
end
