class AddUnitPriceToIncome < ActiveRecord::Migration[6.1]
  def change
    add_column :incomes, :unit_price, :integer
  end
end
