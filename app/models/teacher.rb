class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :subjects
  has_one :grade
  validates_formatting_of :email, using: :email
  validates_formatting_of :mobile_number, using: :us_phone
  acts_as_votable
end
