class User < ApplicationRecord
  rolify
  has_many :entries	

  enum Plan: [:Weight_gain, :Weight_loss, :Weight_maintain]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
