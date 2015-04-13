class Cohort < ActiveRecord::Base
  has_many :contracts
  has_many :users, through: :contracts
  has_one :course_type
end
