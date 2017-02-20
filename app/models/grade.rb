class Grade < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :department
  has_many :students
end
