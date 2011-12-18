class User < ActiveRecord::Base 
  ROLES = %w[admin operador socio banned]
  attr_accessible :email, :password, :password_confirmation, :role
  has_secure_password
  #validates_presence_of :password, :on => :create
end
