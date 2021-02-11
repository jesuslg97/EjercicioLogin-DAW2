class Usuario < ApplicationRecord

  validates :tipo, presence: true, length: {minimum: 1, maximum: 1}
  validates :nombre, presence: true
  validates :apellidos, presence: true
  validates :pais, presence: true
  validates :email, presence: true, length: {minimum: 4}
  validates :contraseña, presence: true, length: {minimum: 8}

end
