class Kudomon < ApplicationRecord
  has_many :captureds
  has_many :kudomons, through: :captureds
end
