class CourseType < ActiveRecord::Base
  belongs_to :cohort

  validates :name, length: { minimum: 2 }, presence: true
  validates :details, presence: true
  validates :duration, inclusion: { in: %w(m f), message: "you have not chosen a valid gender (m/f)" }, presence: true
end
