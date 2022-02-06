class Status < ApplicationRecord
  has_many :flocks, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
