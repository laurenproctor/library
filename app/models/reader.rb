class Reader < ActiveRecord::Base
	attr_accessor :email, :password, :password_confirmation
end