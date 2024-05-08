class Receptionist < ApplicationRecord
    has_many :patients
    belongs_to :user
  end
  