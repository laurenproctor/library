class Reader < ActiveRecord::Base
	# deleting this & using strong_parameters gem instead
	# attr_accessible :email, :password, :password_confirmation
	# include ActiveModel::ForbiddenAttributesProtection
	attr_accessor :email, :password, :password_confirmation
end