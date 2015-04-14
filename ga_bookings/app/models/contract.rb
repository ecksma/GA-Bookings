class Contract < ActiveRecord::Base
  belongs_to :user
  belongs_to :cohort

  validates :acceptance_date, numericality: { only_integer: true }
end
