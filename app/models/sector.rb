class Sector < ActiveRecord::Base
  has_many :skills

  validates :title, uniqueness: true
end
