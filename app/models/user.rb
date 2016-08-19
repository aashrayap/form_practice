class User < ActiveRecord::Base

  validates :username, :email,:password, :presence => true,:length =>{ :maximum => 10}
end
