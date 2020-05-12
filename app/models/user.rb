class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :products
  has_one :address

  devise :database_authenticatable, :registerable,

  :recoverable, :rememberable, :validatable, password_length: 7..100

  validates :lastname, :firstname, :firstnameKANA, :lastnameKANA, :nickname, :birth_date, presence: true

end
