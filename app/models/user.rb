class User < ApplicationRecord
  validates :name, presence: true
  validates :username, length: { is: 7  }, uniqueness: true
  validates :education, presence: true
  validates :graduatedSchool, presence: true
  validates :jobTitle, presence: true
  validates :password, presence: true
  validates :phone, presence: true
  validates :professionalTeam, presence: true
  validates :researchDirection, presence: true

end
