class CourseType < ActiveRecord::Base
  has_many  :cohorts

  validates :name, length: { minimum: 2 }, presence: true
  validates :details, presence: true
  validates :duration, presence: true
end
