class Income < ApplicationRecord
  belongs_to :type

  def amount
    unit_price.to_i * quantity.to_i
  end

  include ReportsKit::Model
  reports_kit do
    filter :income_created_at, :datetime, joins: :income, column: 'incomes.created_at'
  end
end
