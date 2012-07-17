class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessor :USN
  attr_accessible :USN
  #:email, :password, :password_confirmation
  # attr_accessible :title, :body
  validates_presence_of :USN
  validates_uniqueness_of :USN
end
