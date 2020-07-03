class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :products
  has_many :tweets
  has_many :comments
  

  devise :database_authenticatable, :registerable,

  :recoverable, :rememberable, :validatable, password_length: 7..100

end
