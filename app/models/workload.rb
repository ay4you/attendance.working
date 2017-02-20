class Workload < ActiveRecord::Base
  belongs_to :subject
  has_many :results
  acts_as_votable
end
