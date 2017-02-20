class Subject < ActiveRecord::Base
  belongs_to :department
  has_many :reports
  has_and_belongs_to_many :teachers
  has_many :workloads
end
