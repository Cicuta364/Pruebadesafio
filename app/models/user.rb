class User < ActiveRecord::Base

	has_many :user_acount
	has_many :acounts, through: :user_acount
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_name, presence: true, uniqueness: { case_sensitive: false }
  validate :validate_username

end
