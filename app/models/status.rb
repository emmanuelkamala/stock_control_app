class Status < ApplicationRecord
  has_many :flocks

  validates :name, presence: true, uniqueness: true
end
