class User < ActiveRecord::Base
  belongs_to :role
  before_create :set_default_role
  cattr_accessor :current_user
  has_many :parents, dependent: :destroy
  has_many :teachers, dependent: :destroy
  accepts_nested_attributes_for :parents
  accepts_nested_attributes_for :teachers
  # belongs_to :userable, :polymorphic => true
  validates_uniqueness_of :username, :fullname

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable


  attr_accessor :login
  #->Prelang (user_login:devise/username_login_support)
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.downcase}]).first
    else
      where(conditions).first
    end
  end

  private
  def set_default_role
    # if current_user.role_id.defined?
    #   self.role_id = current_user.role_id
    # else
    #   self.role_id ||= Role.find_by_name('parent').id
    # end
    self.role_id ||= Role.find_by_name('parent').id
  end

  devise authentication_keys: [:login]
end
