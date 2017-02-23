class Student < ActiveRecord::Base
  belongs_to :grade
  has_many :reports
  belongs_to :parent
  validates_formatting_of :parent_email, using: :email
  validates_formatting_of :student_email, using: :email
  validates_formatting_of :mobile_number, using: :us_phone
  acts_as_votable 
end
