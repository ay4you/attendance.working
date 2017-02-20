class Result < ActiveRecord::Base
  belongs_to :student
  belongs_to :workload
  belongs_to :report
  acts_as_votable 
end
