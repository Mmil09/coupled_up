class User < ActiveRecord::Base
  extend FriendlyId


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_birthday :birthday
  friendly_id :username, use: [:slugged, :history]

end