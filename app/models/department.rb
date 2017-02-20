class Department < ActiveRecord::Base
  has_many :subjects
  has_many :grades
end
