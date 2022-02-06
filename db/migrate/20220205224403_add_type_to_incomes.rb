class AddTypeToIncomes < ActiveRecord::Migration[6.1]
  def change
    add_reference :incomes, :type, foreign_key: true
  end
end
