class Reader < ActiveRecord::Base
	# deleting this & using strong_parameters gem instead
	# attr_accessible :email, :password, :password_confirmation
	# include ActiveModel::ForbiddenAttributesProtection
	validates :email, presence: true
	validates :password, presence: true
	# validator provided by email_validator gem
	validates :email, email: true
	validates :email, uniqueness: true
	validates :password, confirmation: true
	attr_accessor :email, :password, :password_confirmation
end