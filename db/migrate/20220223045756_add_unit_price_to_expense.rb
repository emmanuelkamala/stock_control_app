class AddUnitPriceToExpense < ActiveRecord::Migration[6.1]
  def change
    add_column :expenses, :unit_price, :integer
  end
end
