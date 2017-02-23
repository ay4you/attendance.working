class Parent < ActiveRecord::Base
  # has_one :user, :as => :userable, dependent: :destroy
  has_one :student
  validates_formatting_of :email, using: :email
  validates_formatting_of :mobile_number, using: :us_phone
  acts_as_votable
end
