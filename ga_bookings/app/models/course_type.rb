class CourseType < ActiveRecord::Base
  belongs_to :cohort

  validates :name, length: { minimum: 2 }, presence: true
  validates :details, presence: true
  validates :duration, presence: true
end
