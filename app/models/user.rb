class User < ApplicationRecord
  rolify
  has_many :entries, dependent: :destroy	
  
  has_one_attached :avatar

  enum plan: { Weight_gain: 0, Weight_loss: 1, Weight_maintain: 2}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
