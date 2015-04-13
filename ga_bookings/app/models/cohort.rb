class Cohort < ActiveRecord::Base
  has_many :contracts, through: :cohorts
  has_one :course_type
end
