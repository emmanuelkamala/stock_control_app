class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.datetime :date
      t.string :category
      t.integer :quantity
      t.integer :total_amount
      t.text :description
      t.references :type, null: false, foreign_key: true


      t.timestamps
    end
  end
end
