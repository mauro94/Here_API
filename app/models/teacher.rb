class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :groups

  validates :faculty_id, :encrypted_password, :email, :name, :last_name, presence: true
  validates :faculty_id, format: { with: /\L[0-9]/, message: "Formato de matricula incorrecto" }, length: { is: 8, wrong_length: "Longitud de matricula incorrecto" }
  validates :email, format: { with: /[lL][0-9._%+-]+@itesm\.mx/, message: "Formato de correo incorrecto" }
end
