class Cohort < ActiveRecord::Base
  has_many :contracts, through: :cohorts
end
