class Income < ApplicationRecord
  belongs_to :type

  def amount
    unit_price.to_i * quantity.to_i
  end
end
