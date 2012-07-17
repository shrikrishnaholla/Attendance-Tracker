class User_db < ActiveRecord::Base
  attr_accessible :usn, :name, :id
  attr_accessor :usn
  validates :usn,:presence => true




end
