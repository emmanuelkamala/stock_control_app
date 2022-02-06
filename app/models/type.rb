class Type < ApplicationRecord
  has_many :flocks
  has_many :incomes
  has_many :expenses
end
