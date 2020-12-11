class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :email, :password, :password_confirmation, :telephone, :address, :number, :complement, :district, :zip, :city, presence: true
  
  has_many :pet_registrations

  def first_name
    name.split(' ').first
  end
end
