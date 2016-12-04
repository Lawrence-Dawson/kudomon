class Trainer < ApplicationRecord
  has_many :captureds
  has_many :trainers, through: :captureds
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
