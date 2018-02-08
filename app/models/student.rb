class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :attends
  has_many :groups, through: :attends
  has_and_belongs_to_many :groups
  
  validates :student_id, :encrypted_password, :email, :device_id, :degree, :name, :last_name, presence: true
  validates :student_id, format: { with: /\A[0-9]/, message: "Formato de matricula incorrecto" }, length: { is: 8, wrong_length: "Longitud de matricula incorrecto" }
  validates :email, format: { with: /[aA][0-9]+@itesm\.mx/, message: "Formato de correo incorrecto" }
end
