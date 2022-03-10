class Income < ApplicationRecord
  belongs_to :type

  def amount
    unit_price.to_i * quantity.to_i
  end

  scope :created_between, lambda {|start_date, end_date| where("created_at >= ? AND created_at <= ?", start_date, end_date )}


  include ReportsKit::Model
  reports_kit do
    filter :income_created_at, :datetime, joins: :income, column: 'incomes.created_at'
  end
end
