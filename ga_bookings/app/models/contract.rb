class Contract < ActiveRecord::Base
  belongs_to :user
  belongs_to :cohort
end
