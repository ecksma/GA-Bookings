class CourseType < ActiveRecord::Base
  belongs_to :cohort

  validates :name, length: { minimum: 2 }
end
