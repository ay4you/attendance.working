class Report < ActiveRecord::Base
  belongs_to :subject
  belongs_to :student
  has_many :results
end
