class Acount < ActiveRecord::Base
	has_many :user_acount
	has_many :users, through: :user_acount
end
