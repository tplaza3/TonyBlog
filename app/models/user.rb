class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  
  # validate_uniqueness_of :email
  
  has_secure_password
end
