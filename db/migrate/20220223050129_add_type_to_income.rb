class AddTypeToIncome < ActiveRecord::Migration[6.1]
  def change
    add_reference :incomes, :type, null: false, foreign_key: true
  end
end
