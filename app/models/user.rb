class User < ActiveRecord::Base
    belongs_to :designation
	validates :email, presence: true, uniqueness: true,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
	validates :logid, uniqueness: true
	validates :password, confirmation: true, 
				length: { minimum: 5 }
	validates :password_confirmation, presence: true
	validates :work_phone,format: { with: /\A(180[-]?)?\d{3}[-]?\d{3}[-]?\d{4}\z/ }
	validates :date_of_birth, presence: true
	validates :date_of_joining, presence: true
end
